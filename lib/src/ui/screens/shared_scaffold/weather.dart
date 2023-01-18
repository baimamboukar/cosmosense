import 'package:cosmosense/src/ui/widgets/widgets.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:cosmosense/src/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Weather extends ConsumerWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(
              color: Colors.grey,
              borderRadius: BorderRadius.circular(0),
            ),
            height: 300,
            child: const Center(child: Text('Nasa Image'))),
        Expanded(
          child: Row(
            children: [
              const Expanded(child: CircularListPage()),
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(0),
                ),
                height: MediaQuery.of(context).size.height,
                width: 130,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          const Icon(Icons.wb_sunny),
                          Text(
                            "-145°F",
                            style: Styles.decorateText(
                                bold: true, color: Palette.secondary, size: 20),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
