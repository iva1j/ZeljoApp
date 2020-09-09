import 'package:ZeljoApp/utils/groupOfFunctions.dart';
import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/LoginPage/widgets/loginPage.dart';
import 'package:ZeljoApp/view/RegisterPage/pages/register.dart';
import 'package:ZeljoApp/view/UserAuthPage/pages/userAuth.dart';
import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  void initState() {
    cleanLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage("assets/images/lines.png"),
                fit: BoxFit.cover)),
        child: WillPopScope(
          onWillPop: () {
            Navigator.of(context).pushAndRemoveUntil(
                FadeRoute(page: UserAuth()), (Route<dynamic> route) => false);
          },
          child: Scaffold(
            backgroundColor: Colors.transparent,
            appBar: AppBar(
              elevation: 0,
              backgroundColor: Colors.transparent,
              actions: [
                GestureDetector(
                  onTap: () => Navigator.of(context).pushAndRemoveUntil(
                      FadeRoute(page: Register()),
                      (Route<dynamic> route) => false),
                  child: Container(
                    margin: EdgeInsets.only(
                        right: SizeConfig.blockSizeHorizontal * 6,
                        top: SizeConfig.blockSizeVertical * 2),
                    child: Text(
                      "Register",
                      style: TextStyle(
                          color: Colors.orange[500],
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                )
              ],
            ),
            body: SingleChildScrollView(
              child: Column(
                children: [
                  LoginPage(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
