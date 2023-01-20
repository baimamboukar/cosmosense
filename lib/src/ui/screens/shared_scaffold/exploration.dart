import 'package:cosmosense/src/state/riverpods/launches_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Exploration extends ConsumerWidget {
  const Exploration({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final launches = ref.watch(spaceXlaunchesRiverpod);
    return SafeArea(
      child: SingleChildScrollView(
        child: launches.when(
          loading: () {
            return const Center(
              child: CupertinoActivityIndicator(),
            );
          },
          data: (spaceXlaunches) {
            final alphaLaunch = spaceXlaunches[10];
            return Column(
              children: [
                Image.network(alphaLaunch.links!.patch!.small ??
                    "https://images2.imgbox.com/6c/cb/na1tzhHs_o.png"),
                Text(alphaLaunch.name ?? ""),
                Text(alphaLaunch.details ?? "no details"),
                Text("Success: ${alphaLaunch.success}")
              ],
            );
          },
          error: (error, stackTrace) {
            return Column(
              children: [
                Text(
                  error.toString(),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
