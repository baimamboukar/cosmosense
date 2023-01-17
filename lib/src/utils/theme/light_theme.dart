import 'package:cosmosense/src/utils/palette.dart';
import 'package:cosmosense/src/utils/theme/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final lightTheme = darkTheme.copyWith(
  primaryColor: Palette.primary,
  textTheme: GoogleFonts.poppinsTextTheme(
    const TextTheme()
        .apply(bodyColor: Palette.white, displayColor: Palette.white),
  ),
);
