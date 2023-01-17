import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NasaImage extends ConsumerWidget {
  const NasaImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return SingleChildScrollView(
      child: Column(
        children: const [
          Text('Cosmosense'),
        ],
      ),
    );
  }
}
