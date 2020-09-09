import 'package:ZeljoApp/view/HomePage/widgets/logoutButton.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [LogoutButton()],
        title: Text('Željo dostava'),
      ),
      body: Center(
        child: Container(
          child: Text('Poyyyy'),
        ),
      ),
    );
  }
}
