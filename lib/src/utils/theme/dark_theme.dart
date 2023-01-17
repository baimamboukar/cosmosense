import 'package:cosmosense/src/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final darkTheme = ThemeData(
  brightness: Brightness.dark,
  useMaterial3: true,
  textTheme: GoogleFonts.exo2TextTheme(),
  typography: Typography.material2021(),
  visualDensity: VisualDensity.adaptivePlatformDensity,
  primarySwatch: const MaterialColor(0xFF143887, {
    100: Color(0xFF143887),
    700: Color(0xFFEEC36D),
    600: Color(0xFF143887),
    200: Color(0xFFEEC36D),
    500: Color(0xFF143887),
    400: Color(0xFFEEC36D),
    50: Color(0xFF337669),
    300: Color(0xFFEEC36D),
  }),
  primaryColor: Palette.primary,
  scaffoldBackgroundColor: Palette.scaffold,
  inputDecorationTheme: const InputDecorationTheme(
    labelStyle: TextStyle(
      color: Colors.white,
    ),
    hintStyle: TextStyle(
      color: Colors.white,
    ),
    enabledBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    focusedBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.white,
      ),
    ),
    errorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
    focusedErrorBorder: UnderlineInputBorder(
      borderSide: BorderSide(
        color: Colors.red,
      ),
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
    ),
  ),
);
