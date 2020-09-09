import 'package:ZeljoApp/utils/Validation/RegisterValidation/addressRegisterValidation.dart';
import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:ZeljoApp/utils/shared/colors.dart';
import 'package:flutter/material.dart';

class AddressField extends StatelessWidget {
  const AddressField({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
          hintText: 'Adresa stanovanja',
          border: InputBorder.none,
          fillColor: formbgcolor,
          filled: true),
      validator: addressValidator,
      initialValue: registerAddress,
      onChanged: (value) => registerAddress = value,
    );
  }
}
