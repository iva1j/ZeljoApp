import 'package:ZeljoApp/utils/Validation/RegisterValidation/passwordRegisterValidation.dart';
import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:ZeljoApp/utils/shared/colors.dart';
import 'package:flutter/material.dart';

class PasswordField extends StatelessWidget {
  const PasswordField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: 'Password',
          border: InputBorder.none,
          fillColor: formbgcolor,
          filled: true),
      validator: passwordValidator,
      initialValue: registerPassword,
      onChanged: (value) => registerPassword = value,
    );
  }
}
