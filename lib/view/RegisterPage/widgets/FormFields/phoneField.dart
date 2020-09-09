import 'package:ZeljoApp/utils/Validation/RegisterValidation/phoneRegisterValidator.dart';
import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:ZeljoApp/utils/shared/colors.dart';
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
          fillColor: formbgcolor,
          filled: true),
      validator: phoneValidator,
      initialValue: registerPhoneNumber,
      onChanged: (value) => registerPhoneNumber = value,
    );
  }
}
