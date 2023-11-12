import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/features/home/home.dart';
import 'package:cosmosense/src/utils/textstyles/text_styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

@RoutePage()
class Exploration extends ConsumerStatefulWidget {
  const Exploration({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ExplorationState();
}

class _ExplorationState extends ConsumerState<Exploration> {
  @override
  void initState() {
    super.initState();
    //ref.read(spaceXLaunchesProvider.notifier).getSpaceXlaunches();
  }

  @override
  Widget build(BuildContext context) {
    final launches = ref.watch(spaceXLaunchesProvider);
    return SafeArea(
      child: launches.maybeWhen(
        orElse: () {
          return const Center(
            child: CupertinoActivityIndicator(),
          );
        },
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
              const SizedBox(
                height: 20,
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
