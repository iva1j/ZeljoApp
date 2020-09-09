import 'package:ZeljoApp/utils/groupOfFunctions.dart';
import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/bgImage.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/registerPage.dart';
import 'package:ZeljoApp/view/RegisterPage/widgets/toggleButton.dart';
import 'package:ZeljoApp/view/UserAuthPage/pages/userAuth.dart';
import 'package:ZeljoApp/viewModel/registerNewModel.dart';
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
                actions: [RegisterToggle()],
              ),
              body: SingleChildScrollView(
                reverse: true,
                child: Padding(
                  padding: EdgeInsets.only(bottom: bottom),
                  child: Column(
                    children: [
                      RegisterPage(),
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
