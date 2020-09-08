import 'package:flutter/material.dart';

final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

String registerFullName,
    registerEmail,
    registerPhoneNumber,
    registerPassword,
    registerAddress;

String loginEmail, loginPassword;
