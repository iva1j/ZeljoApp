import 'package:ZeljoApp/utils/shared/strings.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.only(
          top: SizeConfig.blockSizeVertical * 20,
          left: SizeConfig.blockSizeHorizontal * 40),
      child: FlatButton(
        onPressed: () {},
        color: Colors.transparent,
        child: Padding(
          padding: EdgeInsets.fromLTRB(SizeConfig.safeBlockHorizontal * 6, 0,
              SizeConfig.safeBlockHorizontal * 6, 0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                skip,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.orange[300],
                ),
              ),
              Icon(
                Icons.arrow_forward,
                color: Colors.orange[300],
              )
            ],
          ),
        ),
      ),
    );
  }
}
