import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/ProfilePage/pages/profilePage.dart';
import 'package:flutter/material.dart';

class ProfileButton extends StatefulWidget {
  const ProfileButton({
    Key key,
  }) : super(key: key);

  @override
  _ProfileButtonState createState() => _ProfileButtonState();
}

class _ProfileButtonState extends State<ProfileButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.of(context).pushAndRemoveUntil(
            FadeRoute(page: ProfilePage()), (Route<dynamic> route) => false);
      },
      icon: Container(
        margin: EdgeInsets.only(right: SizeConfig.blockSizeHorizontal * 6),
        child: Icon(
          Icons.account_circle,
          color: Colors.black,
        ),
      ),
    );
  }
}
