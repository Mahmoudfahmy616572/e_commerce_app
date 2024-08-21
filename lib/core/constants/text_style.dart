import 'package:flutter/material.dart';

TextStyle appStyle(double size, FontWeight fw, Color color) {
  return TextStyle(fontSize: size, fontWeight: fw, color: color);
}

TextStyle appStyleWithHt(double size, FontWeight fw, Color color, double ht) {
  return TextStyle(fontSize: size, fontWeight: fw, color: color, height: ht);
}
