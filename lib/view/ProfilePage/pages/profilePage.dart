import 'package:ZeljoApp/utils/shared/colors.dart';
import 'package:ZeljoApp/utils/shared/strings.dart';
import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/HomePage/pages/homePage.dart';
import 'package:ZeljoApp/view/ProfilePage/widgets/Buttons/leadingButton.dart';
import 'package:ZeljoApp/view/ProfilePage/widgets/Buttons/logoutButton.dart';
import 'package:ZeljoApp/view/ProfilePage/widgets/profileAvatar.dart';
import 'package:ZeljoApp/view/ProfilePage/widgets/profileEmail.dart';
import 'package:ZeljoApp/view/ProfilePage/widgets/profilePhone.dart';
import 'package:ZeljoApp/view/ProfilePage/widgets/profileUserName.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      // ignore: missing_return
      onWillPop: () {
        Navigator.of(context).pushAndRemoveUntil(
            FadeRoute(page: HomePage()), (Route<dynamic> route) => false);
      },
      child: Scaffold(
        appBar: AppBar(
          actions: [LogoutButton()],
          leading: LeadingProfileButton(),
          title: Text(
            profil,
            style: TextStyle(color: mainblue),
          ),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.transparent,
        ),
        body: Container(
          margin: EdgeInsets.only(top: SizeConfig.blockSizeVertical * 4),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                ProfileAvatar(),
                SizedBox(height: 20),
                ProfileUserName(),
                SizedBox(height: 5),
                ProfileEmail(),
                SizedBox(height: 5),
                //ProfilePhone(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
