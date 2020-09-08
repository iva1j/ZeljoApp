import 'package:ZeljoApp/utils/Validation/RegisterValidation/addressRegisterValidation.dart';
import 'package:ZeljoApp/utils/Validation/RegisterValidation/emailRegisterValidation.dart';
import 'package:ZeljoApp/utils/Validation/RegisterValidation/nameRegisterValidation.dart';
import 'package:ZeljoApp/utils/Validation/RegisterValidation/passwordRegisterValidation.dart';
import 'package:ZeljoApp/utils/Validation/RegisterValidation/phoneRegisterValidator.dart';
import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);
  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Form(
          key: registerFormKey,
          child: Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.blockSizeHorizontal * 5,
              right: SizeConfig.blockSizeHorizontal * 5,
              top: SizeConfig.blockSizeVertical * 3,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: InputDecoration(hintText: 'Ime i prezime'),
                  validator: nameValidator,
                  initialValue: registerFullName,
                  onChanged: (value) => registerFullName = value,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Email'),
                  validator: emailValidator,
                  initialValue: registerEmail,
                  onChanged: (value) => registerEmail = value,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Password'),
                  validator: passwordValidator,
                  initialValue: registerPassword,
                  onChanged: (value) => registerPassword = value,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Broj telefona'),
                  validator: phoneValidator,
                  initialValue: registerPhoneNumber,
                  onChanged: (value) => registerPhoneNumber = value,
                ),
                TextFormField(
                  decoration: InputDecoration(hintText: 'Adresa stanovanja'),
                  validator: addressValidator,
                  initialValue: registerAddress,
                  onChanged: (value) => registerAddress = value,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: RaisedButton(
                    onPressed: () {
                      if (registerFormKey.currentState.validate()) {}
                    },
                    child: Text('REGISTER'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
