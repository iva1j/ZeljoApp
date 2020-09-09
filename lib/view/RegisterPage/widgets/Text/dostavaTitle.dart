import 'package:ZeljoApp/utils/shared/strings.dart';
import 'package:ZeljoApp/utils/sizeconfig.dart';
import 'package:flutter/material.dart';

class DostavaTitle extends StatelessWidget {
  const DostavaTitle({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: SizeConfig.blockSizeVertical * 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            zeljo,
            style: TextStyle(color: Colors.grey, fontSize: 22),
          ),
          SizedBox(width: 7),
          Text(dostava,
              style: TextStyle(
                  color: Colors.grey,
                  fontSize: 22,
                  fontWeight: FontWeight.w500)),
        ],
      ),
    );
  }
}
