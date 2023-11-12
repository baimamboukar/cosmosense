import 'package:cosmosense/src/app/theme/app_colorscheme.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';

class CosmosenseTheme {
  static ThemeData get light => FlexThemeData.light(
        colorScheme: CosmosenseColorscheme.light,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 7,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          textButtonRadius: 26.0,
          filledButtonRadius: 12.0,
          elevatedButtonRadius: 12.0,
          switchThumbFixedSize: true,
          unselectedToggleIsColored: true,
          inputDecoratorBorderType: FlexInputBorderType.underline,
          inputDecoratorUnfocusedBorderIsColored: false,
          tabBarIndicatorSize: TabBarIndicatorSize.label,
        ),
        useMaterial3ErrorColors: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        fontFamily: "Exo",
      );

  static ThemeData get dark => FlexThemeData.dark(
        colorScheme: CosmosenseColorscheme.dark,
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 7,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          textButtonRadius: 26.0,
          filledButtonRadius: 12.0,
          elevatedButtonRadius: 12.0,
          switchThumbFixedSize: true,
          unselectedToggleIsColored: true,
          inputDecoratorBorderType: FlexInputBorderType.underline,
          inputDecoratorUnfocusedBorderIsColored: false,
          tabBarIndicatorSize: TabBarIndicatorSize.label,
        ),
        useMaterial3ErrorColors: true,
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        fontFamily: "Exo",
      );
}
