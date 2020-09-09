import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/UserAuthPage/widgets/Buttons/emailLogin.dart';
import 'package:ZeljoApp/view/UserAuthPage/widgets/Buttons/facebookLogin.dart';
import 'package:ZeljoApp/view/UserAuthPage/widgets/Buttons/googleLogin.dart';
import 'package:ZeljoApp/view/UserAuthPage/widgets/Buttons/skipLogin.dart';
import 'package:ZeljoApp/view/UserAuthPage/widgets/Text/termsText.dart';
import 'package:ZeljoApp/view/UserAuthPage/widgets/Text/welcomeText.dart';
import 'package:ZeljoApp/view/UserAuthPage/widgets/backgroundImage.dart';
import 'package:flutter/material.dart';

class UserAuth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: backgroundImage(),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
            ),
            body: SingleChildScrollView(
              child: Center(
                child: Column(
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        AuthWelcomeText(),
                        FBLoginButton(),
                        SizedBox(height: 5),
                        GoogleLoginButton(),
                        SizedBox(height: 5),
                        EmailLoginButton(),
                        TermsText(),
                        SkipButton(),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
