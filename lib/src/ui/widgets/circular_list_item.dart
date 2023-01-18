import 'package:cosmosense/src/data/models/planet.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:flutter/material.dart';

class CircleListItem extends StatelessWidget {
  final double resizeFactor;
  final Planet character;

  const CircleListItem(
      {Key? key, required this.resizeFactor, required this.character})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(mainAxisSize: MainAxisSize.min, children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            character.name,
            style: TextStyle(
              color: Palette.secondary,
              fontSize: 20 * resizeFactor,
              fontFamily: "Varino",
            ),
          ),
        ),
        Container(
          width: 135 * resizeFactor,
          height: 135 * resizeFactor,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.transparent,
            image: DecorationImage(
              fit: BoxFit.contain,
              image: AssetImage(character.image),
            ),
          ),
        ),
      ]),
    );
  }
}
