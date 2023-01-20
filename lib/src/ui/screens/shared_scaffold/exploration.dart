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
            return Text(spaceXlaunches.length.toString());
          },
          error: (error, stackTrace) {
            return Text(
              error.toString(),
            );
          },
        ),
      ),
    );
  }
}
