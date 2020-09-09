import 'package:ZeljoApp/utils/Validation/RegisterValidation/nameRegisterValidation.dart';
import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:flutter/material.dart';

class FullNameField extends StatelessWidget {
  const FullNameField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.text,
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
          hintText: "Ime i prezime",
          border: InputBorder.none,
          fillColor: Color(0xfff3f3f4),
          filled: true),
      validator: nameValidator,
      initialValue: registerFullName,
      onChanged: (value) => registerFullName = value,
    );
  }
}
