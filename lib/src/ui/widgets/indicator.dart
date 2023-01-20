import 'package:cosmosense/src/utils/palette.dart';
import 'package:flutter/material.dart';

class Indicator extends StatelessWidget {
  final bool success;
  const Indicator({super.key, required this.success});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: success ? Palette.green : Palette.red,
      ),
    );
  }
}
