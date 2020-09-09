import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/LoginPage/widgets/Buttons/loginButton.dart';
import 'package:ZeljoApp/view/LoginPage/widgets/FormFields/logEmailField.dart';
import 'package:ZeljoApp/view/LoginPage/widgets/FormFields/logPasswordField.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/Text/dostavaTitle.dart';
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
                DostavaTitle(),
                LogEmailField(),
                SizedBox(height: 20),
                LogPasswordField(),
                SizedBox(height: 30),
                LoginButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
