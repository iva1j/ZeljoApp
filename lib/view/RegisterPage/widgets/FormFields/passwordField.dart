import 'package:ZeljoApp/utils/Validation/RegisterValidation/passwordRegisterValidation.dart';
import 'package:ZeljoApp/utils/globalVariables.dart';
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
          fillColor: Color(0xfff3f3f4),
          filled: true),
      validator: passwordValidator,
      initialValue: registerPassword,
      onChanged: (value) => registerPassword = value,
    );
  }
}
