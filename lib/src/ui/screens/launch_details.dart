import 'package:cosmosense/src/data/models/spacex_launch.dart';
import 'package:cosmosense/src/state/riverpods/rocket_riverpod.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';

class LaunchDetails extends ConsumerStatefulWidget {
  final SpaceXlaunch launch;
  const LaunchDetails({required this.launch, super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LaunchDetailsState();
}

class _LaunchDetailsState extends ConsumerState<LaunchDetails> {
  @override
  Widget build(BuildContext context) {
    final rocketData = ref.watch(
        rocketRiverpod(widget.launch.rocket ?? "5e9d0d95eda69955f709d1eb"));
    return SafeArea(
      child: Scaffold(
          body: rocketData.when(
            data: (data) {
              return SingleChildScrollView(
                child: Column(
                  children: [
                    Text(widget.launch.details ?? "No name"),
                    Text(data.description ?? "No description"),
                    Text(data.name ?? "No name"),
                    Text(data.type ?? "No type"),
                    Text(data.boosters.toString()),
                    Text(data.company ?? "No company"),
                    Text(data.country ?? "No country"),
                    Text(data.costPerLaunch.toString()),
                    Text(data.diameter!.meters.toString()),
                    Text(data.engines!.number.toString()),
                    Text(data.engines!.type ?? "No type"),
                    Text(data.engines!.version ?? "No version"),
                    Text(data.engines!.layout ?? "No layout"),
                    Text(data.engines!.engineLossMax.toString()),
                    Text(data.engines!.propellant1 ?? "No propellant1"),
                    Text(data.engines!.propellant2 ?? "No propellant2"),
                    Text(data.engines!.thrustSeaLevel!.kN.toString()),
                    Text(data.engines!.thrustVacuum!.kN.toString()),
                    Text(data.engines!.thrustToWeight.toString()),
                    Text(data.firstFlight ?? "No first flight"),
                    Text(data.firstStage!.burnTimeSec.toString()),
                    Text(data.firstStage!.engines.toString()),
                    Text(data.firstStage!.fuelAmountTons.toString()),
                    Text(data.firstStage!.reusable.toString()),
                    Text(data.firstStage!.thrustSeaLevel!.kN.toString()),
                    Text(data.firstStage!.thrustVacuum!.kN.toString()),
                    Text(data.height!.meters.toString()),
                    Text(data.id ?? "No id"),
                    Text(data.mass!.kg.toString()),
                    ...data.flickrImages!
                        .map((imgLink) => Image.network(imgLink))
                        .toList(),
                  ],
                ),
              );
            },
            loading: () => const Center(
              child: CupertinoActivityIndicator(),
            ),
            error: (error, stack) => Text(
              error.toString(),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {},
            child: const Icon(LineIcons.youtube),
          )),
    );
  }
}
