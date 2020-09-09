import 'package:ZeljoApp/utils/Validation/RegisterValidation/phoneRegisterValidator.dart';
import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:flutter/material.dart';

class PhoneField extends StatelessWidget {
  const PhoneField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.phone,
      decoration: InputDecoration(
          hintText: 'Broj telefona',
          border: InputBorder.none,
          fillColor: Color(0xfff3f3f4),
          filled: true),
      validator: phoneValidator,
      initialValue: registerPhoneNumber,
      onChanged: (value) => registerPhoneNumber = value,
    );
  }
}
