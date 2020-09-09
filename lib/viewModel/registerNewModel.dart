import 'dart:async';

import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/view/HomePage/pages/homePage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

// ignore: missing_return
Future<bool> userExistingorNot(String email) async {
  final QuerySnapshot result = await FirebaseFirestore.instance
      .collection('users')
      .where('email', isEqualTo: registerEmail)
      .limit(1)
      .get();
  final List<DocumentSnapshot> documents = result.docs;
  if (documents.length > 0) {
    allowUserToRegister = false;
  } else {
    allowUserToRegister = true;
  }
}

checkStatus(BuildContext context, String email) {
  FutureBuilder(
      future: userExistingorNot(email),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        if (snapshot.hasData) {
          allowUserToRegister = false;
          return Container();
        } else {
          allowUserToRegister = true;
          return Container();
        }
      });
}

Future onPressedRegButton(BuildContext context) async {
  FocusScope.of(context).unfocus();
  FocusScope.of(context).requestFocus(new FocusNode());
  await checkStatus(context, registerEmail);
  Timer(Duration(milliseconds: 500), () async {
    if (registerFormKey.currentState.validate()) {
      allowUserToRegister
          ? FirebaseAuth.instance
              .createUserWithEmailAndPassword(
                  email: registerEmail, password: registerPassword)
              .then((authResult) => FirebaseFirestore.instance
                  .collection("users")
                  .doc(authResult.user.uid)
                  .set({
                    "uid": authResult.user.uid,
                    "fullName": registerFullName,
                    "password": registerPassword,
                    "email": registerEmail,
                    "phone": registerPhoneNumber,
                    "address": registerAddress,
                  })
                  .then((result) async => {
                        registerFullName = null,
                        registerEmail = null,
                        registerPassword = null,
                        registerPhoneNumber = null,
                        registerAddress = null,
                      })
                  .then(
                    (value) => Navigator.of(context).pushAndRemoveUntil(
                      FadeRoute(page: HomePage()),
                      (Route<dynamic> route) => false,
                    ),
                  ))
          : Container();
    }
  });
}

void removeFocus(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    currentFocus.focusedChild.unfocus();
  }
}
