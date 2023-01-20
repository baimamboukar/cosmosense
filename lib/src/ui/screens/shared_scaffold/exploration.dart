import 'package:cosmosense/src/state/riverpods/launches_riverpod.dart';
import 'package:cosmosense/src/ui/widgets/widgets.dart';
import 'package:cosmosense/src/utils/textstyles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Exploration extends ConsumerWidget {
  const Exploration({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final launches = ref.watch(spaceXlaunchesRiverpod);
    return SafeArea(
      child: launches.when(
        loading: () {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        },
        data: (spaceXlaunches) {
          //final alphaLaunch = spaceXlaunches[10];
          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  RotatedBox(
                    quarterTurns: 3,
                    child: Text(
                      "SPACEX LAUNCHES",
                      style: Styles.title().copyWith(fontFamily: "Daesang"),
                    ),
                  ),
                  Expanded(child: Image.asset("assets/images/spacexlaunch.jpg"))
                ],
              ),
              Expanded(
                  child: FadeAnimatedList(
                      launches: spaceXlaunches.take(15).toList())),
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
    );
  }
}
