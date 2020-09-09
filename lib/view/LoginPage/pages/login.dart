import 'package:ZeljoApp/utils/groupOfFunctions.dart';
import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/LoginPage/widgets/loginPage.dart';
import 'package:ZeljoApp/view/LoginPage/widgets/loginToggleButton.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/bgImage.dart';
import 'package:ZeljoApp/view/UserAuthPage/pages/userAuth.dart';
import 'package:ZeljoApp/viewModel/registerNewModel.dart';
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
    final bottom = MediaQuery.of(context).viewInsets.bottom;
    SizeConfig().init(context);
    return GestureDetector(
      onTap: () {
        removeFocus(context);
      },
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Container(
          decoration: bgImage(),
          child: WillPopScope(
            // ignore: missing_return
            onWillPop: () {
              Navigator.of(context).pushAndRemoveUntil(
                  FadeRoute(page: UserAuth()), (Route<dynamic> route) => false);
            },
            child: Scaffold(
              resizeToAvoidBottomPadding: false,
              backgroundColor: Colors.transparent,
              appBar: AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                actions: [LoginToggleButton()],
              ),
              body: SingleChildScrollView(
                reverse: true,
                child: Padding(
                  padding: EdgeInsets.only(bottom: bottom),
                  child: Column(
                    children: [
                      LoginPage(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
