import 'package:ZeljoApp/viewModel/googleSignInViewModel.dart';
import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundImage: NetworkImage(
        imageUrl,
      ),
      radius: 40,
      backgroundColor: Colors.transparent,
    );
  }
}
