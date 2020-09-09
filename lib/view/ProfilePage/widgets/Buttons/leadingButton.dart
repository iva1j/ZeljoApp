import 'package:ZeljoApp/utils/shared/transitionFade.dart';
import 'package:ZeljoApp/view/HomePage/pages/homePage.dart';
import 'package:flutter/material.dart';

class LeadingProfileButton extends StatelessWidget {
  const LeadingProfileButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back_ios,
        color: Colors.black,
      ),
      onPressed: () {
        Navigator.of(context).pushAndRemoveUntil(
            FadeRoute(page: HomePage()), (Route<dynamic> route) => false);
      },
    );
  }
}
