import 'package:ZeljoApp/utils/Validation/LoginValidation/passwordLoginValidator.dart';
import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:flutter/material.dart';

class LogPasswordField extends StatelessWidget {
  const LogPasswordField({
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
      validator: passwordLoginValidator,
      initialValue: loginPassword,
      onChanged: (value) => loginPassword = value,
    );
  }
}
