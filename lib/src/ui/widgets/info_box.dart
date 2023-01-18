import 'package:cosmosense/src/utils/palette.dart';
import 'package:flutter/material.dart';

class InfoBox extends StatelessWidget {
  final String label;
  final String data;
  final IconData? icon;
  final Color? color;
  const InfoBox({
    Key? key,
    required this.label,
    required this.data,
    this.icon,
    this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Card(
        elevation: 10,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(24.0)),
        child: Container(
          height: 80,
          width: 100,
          decoration: BoxDecoration(
              color: Palette.black, borderRadius: BorderRadius.circular(24.0)),
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  label,
                  style: TextStyle(
                      fontFamily: "Varino",
                      color: Palette.secondary,
                      fontSize: 11),
                ),
                Text(
                  data,
                  style: TextStyle(
                      fontSize: 14, fontFamily: "Exo", color: Palette.white),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
