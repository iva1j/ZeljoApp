import 'package:flutter/material.dart';

BoxDecoration bgImage() {
  return BoxDecoration(
    image: DecorationImage(
        image: AssetImage("assets/images/lines.png"), fit: BoxFit.cover),
  );
}
