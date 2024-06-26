import 'package:flex_seed_scheme/flex_seed_scheme.dart';
import 'package:flutter/material.dart';

class CosmosenseColorscheme {
  static ColorScheme get light => SeedColorScheme.fromSeeds(
        brightness: Brightness.light,
        primaryKey: const Color(0xFF764AF1),
        secondaryKey: const Color(0xFFF9C54B),
        tertiaryKey: const Color(0xFF0E8BD3),
        tones: FlexTones.vivid(Brightness.light),
      );

  static ColorScheme get dark => SeedColorScheme.fromSeeds(
        brightness: Brightness.dark,
        primaryKey: const Color(0xFF764AF1),
        secondaryKey: const Color(0xFFF9C54B),
        tertiaryKey: const Color(0xFF0E8BD3),
        tones: FlexTones.vivid(Brightness.dark),
      );
}
