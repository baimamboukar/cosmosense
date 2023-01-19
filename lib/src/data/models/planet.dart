import 'package:cosmosense/src/utils/palette.dart';
import 'package:flutter/material.dart' show Color;

class Planet {
  final String name;
  final String image;
  final String history;
  final Color color;

  Planet(
      {required this.name,
      required this.color,
      required this.image,
      required this.history});
}

final planets = [
  Planet(
      image: "assets/images/mars.png",
      name: "MARS",
      color: Palette.mars,
      history: "Lorem ipusm dolor si amet"),
  Planet(
      image: "assets/images/jupiter.png",
      color: Palette.jupiter,
      name: "JUPITER",
      history: "Lorem ipusm dolor si amet"),
  Planet(
      image: "assets/images/earth.png",
      name: "EARTH",
      color: Palette.earth,
      history: "Lorem ipusm dolor si amet"),
  Planet(
      image: "assets/images/venus.png",
      name: "VENUS",
      color: Palette.venus,
      history: "Lorem ipusm dolor si amet"),
  Planet(
      image: "assets/images/earth_moon.png",
      name: "MOON",
      color: Palette.moon,
      history: "Lorem ipusm dolor si amet"),
  Planet(
      image: "assets/images/mercury.png",
      name: "MERCURY",
      color: Palette.mercury,
      history: "Lorem ipusm dolor si amet"),
  Planet(
      image: "assets/images/uranus.png",
      name: "URANUS",
      color: Palette.uranus,
      history: "Lorem ipusm dolor si amet"),
  Planet(
      image: "assets/images/neptune.png",
      name: "NEPTUNE",
      color: Palette.neptune,
      history: "Lorem ipusm dolor si amet"),
  Planet(
      image: "assets/images/saturn.png",
      name: "SATURN",
      color: Palette.saturn,
      history: "Lorem ipusm dolor si amet"),
];
