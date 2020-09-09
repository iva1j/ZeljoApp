import 'package:flutter/material.dart';

BoxDecoration backgroundImage() {
  return BoxDecoration(
      image: DecorationImage(
          image: AssetImage("assets/images/background.png"),
          fit: BoxFit.cover));
}
