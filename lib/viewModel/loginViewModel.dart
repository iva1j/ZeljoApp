import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/view/HomePage/pages/homePage.dart';
import 'package:ZeljoApp/view/UserAuthPage/pages/userAuth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Future<bool> isUserRegistered() async {
  final QuerySnapshot result = await FirebaseFirestore.instance
      .collection('users')
      .where('email', isEqualTo: loginEmail)
      .where('password', isEqualTo: loginPassword)
      .limit(1)
      .get();
  final List<DocumentSnapshot> dokument = result.docs;
  if (dokument.length > 0) {
    status = true;
    print("Trenutni status (print od SignIn-a):" + status.toString());
  } else {
    status = false;
    print("Trenutni status(print od SignIn-a):" + status.toString());
  }
}

Future onPressedButtonLogin(BuildContext context) async {
  await isUserRegistered();

  if (loginFormKey.currentState.validate() && status == true) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: loginEmail, password: loginPassword)
        .then((authResult) => FirebaseFirestore.instance
            .collection("users")
            .doc(authResult.user.uid)
            .get()
            .then((DocumentSnapshot result) => Navigator.of(context)
                .pushAndRemoveUntil(FadeRoute(page: HomePage()),
                    (Route<dynamic> route) => false))
            .catchError((err) => print(err)))
        .catchError((err) => print(err));
  }
}
