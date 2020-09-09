import 'package:ZeljoApp/utils/shared/strings.dart';
import 'package:ZeljoApp/viewModel/registerNewModel.dart';
import 'package:flutter/material.dart';

class RegButton extends StatelessWidget {
  const RegButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0),
          child: RaisedButton(
            color: Colors.orange[700],
            onPressed: () {
              onPressedRegButton(context);
            },
            child: Text(
              registracija,
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
