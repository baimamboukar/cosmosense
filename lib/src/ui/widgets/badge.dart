import 'package:cosmosense/src/utils/palette.dart';
import 'package:cosmosense/src/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';

class Badge extends StatelessWidget {
  final bool success;
  const Badge({super.key, required this.success});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 20,
      decoration: BoxDecoration(
        color: success
            ? Palette.green.withOpacity(.4)
            : Palette.red.withOpacity(.4),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Center(
            child: Text(
          success ? "success" : "failed",
          style:
              Styles.decorateText(bold: false, size: 11, color: Palette.white),
        )),
      ),
    );
  }
}
