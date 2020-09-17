import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

TextStyle calciBlackNumberTextStyle = TextStyle(
  fontSize: 30,
  color: Colors.black
);

TextStyle calciRedNumberTextStyle = TextStyle(
    fontSize: 30,
    color: Colors.orange.shade800
);

TextStyle calciWhiteNumberTextStyle = TextStyle(
    fontSize: 30,
    color: Colors.white
);

String removeDecimalZeroFormat(double n) {
  return n.toStringAsFixed(n.truncateToDouble() == n ? 0 : 2);
}

Color appColor = Colors.orange.shade900;