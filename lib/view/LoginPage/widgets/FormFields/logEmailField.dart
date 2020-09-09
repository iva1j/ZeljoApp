import 'package:ZeljoApp/utils/Validation/LoginValidation/emailLoginValidation.dart';
import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:flutter/material.dart';

class LogEmailField extends StatelessWidget {
  const LogEmailField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          hintText: 'Email',
          border: InputBorder.none,
          fillColor: Color(0xfff3f3f4),
          filled: true),
      validator: emailLoginValidator,
      initialValue: loginEmail,
      onChanged: (value) => loginEmail = value,
    );
  }
}
