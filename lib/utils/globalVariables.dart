import 'package:flutter/material.dart';

final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

//initialValue
String registerFullName,
    registerEmail,
    registerPhoneNumber,
    registerPassword,
    registerAddress;

//initialState
String loginEmail, loginPassword;

var allowUserToRegister = false;
var status = false;

String email;
String password;
