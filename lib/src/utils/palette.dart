import 'package:flutter/material.dart' show Color;

class Palette {
  static Color primary = const Color(0xFF764AF1);
  static Color secondary = const Color(0xFFF9C54B);
  static Color tertiary = const Color(0xFF0E8BD3);
  static Color scaffold = const Color(0xFF00032A);

  static Color white = const Color(0xFFF9F9F9);
  static Color black = const Color(0xFF000000);
  static Color grey = const Color(0xFFA9A9A9);
  static Color red = const Color(0xFFE74C3C);
  static Color green = const Color(0xFF2ECC71);

  static Color mars = const Color(0xFFAC6119);
  static Color neptune = const Color(0xFF4b70dd);

  static Color earth = const Color(0xFF3B5D38);
  static Color uranus = const Color(0xFFe1eeee);
  static Color saturn = const Color(0xFF7B7869);
  static Color mercury = const Color(0xFFe5e5e5);
  static Color moon = const Color(0xFFC3C2BE);
  static Color jupiter = const Color(0xFF404436);
  static Color venus = const Color(0xFFFFC649);

  static List<Color> variants = [
    earth,
    venus,
    mercury,
    venus,
    neptune,
    mars,
    saturn,
    jupiter,
    secondary,
    tertiary,
    grey,
  ];
}
