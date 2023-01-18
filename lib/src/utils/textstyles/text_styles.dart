import 'package:cosmosense/src/utils/palette.dart';
import 'package:flutter/material.dart';

class Styles {
  static TextStyle title({Color? color}) => TextStyle(
      fontFamily: "Varino", fontSize: 22, color: color ?? Palette.secondary);

  static TextStyle decorateText(
          {required Color color, required bool bold, required double size}) =>
      TextStyle(
          color: color,
          fontWeight: bold ? FontWeight.bold : FontWeight.normal,
          fontSize: size);
}
