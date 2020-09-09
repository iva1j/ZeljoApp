import 'package:ZeljoApp/utils/globalVariables.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/Buttons/regButton.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/FormFields/addressField.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/FormFields/emailField.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/FormFields/nameField.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/FormFields/passwordField.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/FormFields/phoneField.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/Text/dostavaTitle.dart';
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
                DostavaTitle(),
                FullNameField(),
                SizedBox(height: 10),
                EmailField(),
                SizedBox(height: 10),
                PasswordField(),
                SizedBox(height: 10),
                PhoneField(),
                SizedBox(height: 10),
                AddressField(),
                RegButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
