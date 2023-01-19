import 'package:cosmosense/src/state/riverpods/apod_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NasaImage extends ConsumerWidget {
  const NasaImage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final apod = ref.watch(apodRiverpod);
    return SafeArea(
      child: apod.when(
        loading: () {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        },
        data: (apodData) {
          return Column(
            children: [
              Text(apodData.copyright ?? ""),
              Image.network(apodData.url ?? "image"),
              const SizedBox(
                height: 20,
              ),
              Text(apodData.explanation ?? ""),
              Text(apodData.date ?? ""),
            ],
          );
        },
        error: (error, stackTrace) {
          return Text(error.toString());
        },
      ),
    );
  }
}
