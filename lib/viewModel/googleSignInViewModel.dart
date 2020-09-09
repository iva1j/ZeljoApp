import 'package:ZeljoApp/view/HomePage/pages/homePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as auth;
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:rxdart/rxdart.dart';

final FirebaseAuth _auth = FirebaseAuth.instance;
final GoogleSignIn googleSignIn = GoogleSignIn();
final FirebaseFirestore _db = FirebaseFirestore.instance;

Observable<auth.User> user;
Observable<Map<String, dynamic>> profile;
PublishSubject loading = PublishSubject();

String name;
String email;
String imageUrl;
//String phone;

// ignore: non_constant_identifier_names
AuthService() {
  user = Observable(_auth.authStateChanges());
  profile = user.switchMap((auth.User u) {
    if (u != null) {
      return _db
          .collection('google_users')
          .doc(u.uid)
          .snapshots()
          .map((snap) => snap.data());
    } else {
      return Observable.just({});
    }
  });
}

Future<auth.User> signInWithGoogle() async {
  loading.add(true);
  await Firebase.initializeApp();

  final GoogleSignInAccount googleSignInAccount = await googleSignIn.signIn();
  final GoogleSignInAuthentication googleSignInAuthentication =
      await googleSignInAccount.authentication;

  final AuthCredential credential = GoogleAuthProvider.credential(
    accessToken: googleSignInAuthentication.accessToken,
    idToken: googleSignInAuthentication.idToken,
  );

  final UserCredential authResult =
      await _auth.signInWithCredential(credential);
  final User user = authResult.user;

  updateUserData(user);
  loading.add(false);

  if (user != null) {
    assert(user.email != null);
    assert(user.displayName != null);
    assert(user.photoURL != null);
    //assert(user.phoneNumber != null);

    name = user.displayName;
    email = user.email;
    imageUrl = user.photoURL;
    //phone = user.phoneNumber;

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    final User currentUser = _auth.currentUser;
    assert(user.uid == currentUser.uid);

    print('signInWithGoogle succeeded: $user');

    return user;
  }

  return null;
}

void updateUserData(auth.User user) async {
  DocumentReference ref = _db.collection('google_users').doc(user.uid);

  return ref.set({
    'uid': user.uid,
    'email': user.email,
    'photoURL': user.photoURL,
    'displayName': user.displayName,
  });
}

Future<void> signOutGoogle() async {
  await googleSignIn.signOut();

  print("User Signed Out");
}

void onPressedGoogleSignIn(BuildContext context) {
  signInWithGoogle().then(
    (result) {
      if (result != null) {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
              return HomePage();
            },
          ),
        );
      }
    },
  );
}
