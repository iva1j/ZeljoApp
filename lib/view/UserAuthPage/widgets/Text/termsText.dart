import 'package:ZeljoApp/utils/shared/strings.dart';
import 'package:flutter/material.dart';

class TermsText extends StatelessWidget {
  const TermsText({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      terms,
      style: TextStyle(color: Colors.grey),
    );
  }
}
