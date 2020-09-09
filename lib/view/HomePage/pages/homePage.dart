import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:ZeljoApp/view/HomePage/widgets/profileButton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        actions: [
          ProfileButton(),
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: Center(
        child: Container(
          child: Text('Preporučena hrana'),
        ),
      ),
    );
  }
}
