import 'dart:async';

import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

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
                  .catchError((err) => print(err)))
              .catchError((err) => print(err))
          : showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: Text("Error"),
                  content: Text("Email already in use"),
                  actions: <Widget>[
                    FlatButton(
                      child: Text("Close"),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                );
              });
    }
  });
}

void removeFocusRegister(BuildContext context) {
  FocusScopeNode currentFocus = FocusScope.of(context);
  if (!currentFocus.hasPrimaryFocus && currentFocus.focusedChild != null) {
    currentFocus.focusedChild.unfocus();
  }
}
