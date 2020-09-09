import 'package:ZeljoApp/utils/Validation/RegisterValidation/emailRegisterValidation.dart';
import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:flutter/material.dart';

class EmailField extends StatelessWidget {
  const EmailField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.visiblePassword,
      decoration: InputDecoration(
          hintText: 'Email',
          border: InputBorder.none,
          fillColor: Color(0xfff3f3f4),
          filled: true),
      validator: emailValidator,
      initialValue: registerEmail,
      onChanged: (value) => registerEmail = value,
    );
  }
}
