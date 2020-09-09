import 'package:ZeljoApp/utils/groupOfFunctions.dart';
import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/LoginPage/pages/login.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/registerPage.dart';
import 'package:ZeljoApp/view/UserAuthPage/pages/userAuth.dart';
import 'package:flutter/material.dart';

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  void initState() {
    cleanRegister();
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
                      FadeRoute(page: Login()),
                      (Route<dynamic> route) => false),
                  child: Container(
                    margin: EdgeInsets.only(
                        right: SizeConfig.blockSizeHorizontal * 6,
                        top: SizeConfig.blockSizeVertical * 2),
                    child: Text(
                      "SignIn",
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
                  RegisterPage(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
