import 'package:ZeljoApp/utils/shared/colors.dart';
import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/HomePage/pages/homePage.dart';
import 'package:ZeljoApp/view/ProfilePage/widgets/logoutButton.dart';
import 'package:ZeljoApp/viewModel/googleSignInViewModel.dart';
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
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  FadeRoute(page: HomePage()), (Route<dynamic> route) => false);
            },
          ),
          title: Text(
            'Profil',
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
                CircleAvatar(
                  backgroundImage: NetworkImage(
                    imageUrl,
                  ),
                  radius: 40,
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(height: 20),
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 25,
                      color: mainblue,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 5),
                Text(
                  email,
                  style: TextStyle(fontSize: 15, color: mainblue),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
