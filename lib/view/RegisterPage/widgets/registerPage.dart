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
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin:
                      EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Željo",
                        style: TextStyle(color: Colors.grey, fontSize: 22),
                      ),
                      SizedBox(width: 7),
                      Text("Dostava",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 22,
                              fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: "Ime i prezime",
                      border: InputBorder.none,
                      fillColor: Color(0xfff3f3f4),
                      filled: true),
                  validator: nameValidator,
                  initialValue: registerFullName,
                  onChanged: (value) => registerFullName = value,
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Email',
                      border: InputBorder.none,
                      fillColor: Color(0xfff3f3f4),
                      filled: true),
                  validator: emailValidator,
                  initialValue: registerEmail,
                  onChanged: (value) => registerEmail = value,
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      fillColor: Color(0xfff3f3f4),
                      filled: true),
                  validator: passwordValidator,
                  initialValue: registerPassword,
                  onChanged: (value) => registerPassword = value,
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Broj telefona',
                      border: InputBorder.none,
                      fillColor: Color(0xfff3f3f4),
                      filled: true),
                  validator: phoneValidator,
                  initialValue: registerPhoneNumber,
                  onChanged: (value) => registerPhoneNumber = value,
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Adresa stanovanja',
                      border: InputBorder.none,
                      fillColor: Color(0xfff3f3f4),
                      filled: true),
                  validator: addressValidator,
                  initialValue: registerAddress,
                  onChanged: (value) => registerAddress = value,
                ),
                Center(
                  child: Container(
                    width: 170,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: RaisedButton(
                        color: Colors.orange[700],
                        onPressed: () {
                          if (registerFormKey.currentState.validate()) {}
                        },
                        child: Text(
                          'REGISTRUJ SE',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
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
