import 'package:ZeljoApp/utils/Validation/RegisterValidation/emailRegisterValidation.dart';
import 'package:ZeljoApp/utils/Validation/RegisterValidation/passwordRegisterValidation.dart';
import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: SingleChildScrollView(
        child: Form(
          key: loginFormKey,
          child: Padding(
            padding: EdgeInsets.only(
              left: SizeConfig.blockSizeHorizontal * 5,
              right: SizeConfig.blockSizeHorizontal * 5,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.only(
                      bottom: SizeConfig.blockSizeVertical * 15),
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
                      hintText: 'Email',
                      border: InputBorder.none,
                      fillColor: Color(0xfff3f3f4),
                      filled: true),
                  validator: emailValidator,
                  initialValue: loginEmail,
                  onChanged: (value) => loginEmail = value,
                ),
                SizedBox(height: 20),
                TextFormField(
                  decoration: InputDecoration(
                      hintText: 'Password',
                      border: InputBorder.none,
                      fillColor: Color(0xfff3f3f4),
                      filled: true),
                  validator: passwordValidator,
                  initialValue: loginPassword,
                  onChanged: (value) => loginPassword = value,
                ),
                SizedBox(height: 30),
                Center(
                  child: Container(
                    width: 170,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 16.0),
                      child: RaisedButton(
                        color: Colors.orange[700],
                        onPressed: () {
                          if (loginFormKey.currentState.validate()) {}
                        },
                        child: Text('LOGIN',
                            style: TextStyle(color: Colors.white)),
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
