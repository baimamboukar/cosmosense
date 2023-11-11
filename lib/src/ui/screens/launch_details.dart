// import 'package:cosmosense/src/data/models/spacex_launch.dart';
// import 'package:cosmosense/src/state/riverpods/rocket_riverpod.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:line_icons/line_icons.dart';

// class LaunchDetails extends ConsumerStatefulWidget {
//   final SpaceXlaunch launch;
//   const LaunchDetails({required this.launch, super.key});
//   @override
//   ConsumerState<ConsumerStatefulWidget> createState() => _LaunchDetailsState();
// }

// class _LaunchDetailsState extends ConsumerState<LaunchDetails> {
//   @override
//   Widget build(BuildContext context) {
//     final rocketData = ref.watch(
//         rocketRiverpod(widget.launch.rocket ?? "5e9d0d95eda69955f709d1eb"));
//     return SafeArea(
//       child: Scaffold(
//         body: rocketData.when(
//           data: (data) {
//             return SingleChildScrollView(
//               child: Column(
//                 children: [
//                   Text(widget.launch.details ?? "No name"),
//                   Text(data.description ?? "No description"),
//                   Text(data.name ?? "No name"),
//                   Text(data.type ?? "No type"),
//                   Text(data.boosters.toString()),
//                   Text(data.company ?? "No company"),
//                   Text(data.country ?? "No country"),
//                   Text(data.costPerLaunch.toString()),
//                   Text(data.diameter!.meters.toString()),
//                   Text(data.engines!.number.toString()),
//                   Text(data.engines!.type ?? "No type"),
//                   Text(data.engines!.version ?? "No version"),
//                   Text(data.engines!.layout ?? "No layout"),
//                   Text(data.engines!.engineLossMax.toString()),
//                   Text(data.engines!.propellant1 ?? "No propellant1"),
//                   Text(data.engines!.propellant2 ?? "No propellant2"),
//                   Text(data.engines!.thrustSeaLevel!.kN.toString()),
//                   Text(data.engines!.thrustVacuum!.kN.toString()),
//                   Text(data.engines!.thrustToWeight.toString()),
//                   Text(data.firstFlight ?? "No first flight"),
//                   Text(data.firstStage!.burnTimeSec.toString()),
//                   Text(data.firstStage!.engines.toString()),
//                   Text(data.firstStage!.fuelAmountTons.toString()),
//                   Text(data.firstStage!.reusable.toString()),
//                   Text(data.firstStage!.thrustSeaLevel!.kN.toString()),
//                   Text(data.firstStage!.thrustVacuum!.kN.toString()),
//                   Text(data.height!.meters.toString()),
//                   Text(data.id ?? "No id"),
//                   Text(data.mass!.kg.toString()),
//                 ],
//               ),
//             );
//           },
//           loading: () => const Center(
//             child: CupertinoActivityIndicator(),
//           ),
//           error: (error, stack) => Text(
//             error.toString(),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {},
//           child: const Icon(LineIcons.youtube),
//         ),
//       ),
//     );
//   }
// }

import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/data/models/spacex_launch.dart';
import 'package:cosmosense/src/state/riverpods/rocket_riverpod.dart';
import 'package:cosmosense/src/ui/widgets/widgets.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:iconly/iconly.dart';
import 'package:line_icons/line_icons.dart';
import 'package:url_launcher/url_launcher.dart';

@RoutePage()
class LaunchDetails extends ConsumerWidget {
  final SpaceXlaunch launch;

  const LaunchDetails({super.key, required this.launch});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final rocketData =
        ref.watch(rocketRiverpod(launch.rocket ?? "5e9d0d95eda69955f709d1eb"));
    return Scaffold(
      backgroundColor: Palette.background,
      body: Column(
        children: [
          Expanded(
            child: rocketData.when(
              error: (error, stackTrace) => Center(
                child: Text(
                  error.toString(),
                ),
              ),
              loading: () => const Center(
                child: CupertinoActivityIndicator(),
              ),
              data: (data) => CustomScrollView(
                slivers: [
                  HeaderWidget(launch: launch),
                  const SliverToBoxAdapter(
                    child: SizedBox(height: 40),
                  ),
                  SliverToBoxAdapter(
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                launch.name ?? "No name",
                                style: TextStyle(
                                  color: Palette.secondary,
                                  fontSize: 22,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              const Row(
                                children: [
                                  Text(
                                    "Launched by SpaceX",
                                    style: TextStyle(
                                      fontSize: 12,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Indicator(
                                    success: true,
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: [
                                  const Icon(LineIcons.fulcrum),
                                  Text(
                                    "Engine type",
                                    style: TextStyle(
                                      color: Palette.secondary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(data.engines!.type ?? "No type"),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Icon(IconlyBroken.location),
                                  Text(
                                    "Launch country",
                                    style: TextStyle(
                                      color: Palette.secondary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(
                                  data.country ?? "No country",
                                  style: const TextStyle(
                                    fontSize: 10,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  const Icon(LineIcons.fulcrum),
                                  Text(
                                    "Cost per launch",
                                    style: TextStyle(
                                      color: Palette.secondary,
                                      fontSize: 18,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: const EdgeInsets.only(left: 25.0),
                                child: Text(data.costPerLaunch.toString()),
                              ),
                            ],
                          ),
                          Stack(
                            fit: StackFit.loose,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                // height:
                                //     MediaQuery.of(context).size.height * 0.3,
                                width: MediaQuery.of(context).size.width * 0.35,
                                padding: const EdgeInsets.all(8.0),
                                decoration: BoxDecoration(
                                  color: Palette.secondary.withOpacity(.65),
                                  borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(50),
                                    bottomRight: Radius.circular(50),
                                    topRight: Radius.circular(10),
                                    bottomLeft: Radius.circular(10),
                                  ),
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: 60,
                                    ),
                                    Text(
                                      data.name ?? "No name",
                                      style: TextStyle(
                                        color: Palette.white,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15,
                                      ),
                                    ),
                                    Text(
                                      data.description ?? "No name",
                                      style: TextStyle(
                                        color: Palette.white,
                                        fontSize: 11,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Positioned(
                                top: -30,
                                left: -25,
                                child: Image.network(
                                  launch.links!.patch!.small ?? "",
                                  height: 100,
                                  width: 100,
                                ),
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
          ),
          Row(
            children: [
              CircleAvatar(
                backgroundColor: Palette.black,
                child: Icon(
                  LineIcons.rocket,
                  size: 28,
                  color: Palette.white,
                ),
              ),
              const SizedBox(
                width: 2,
              ),
              const Text(
                "Launch details",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              )
            ],
          ),
          SelectableText(
            launch.details ?? "No details",
            style: const TextStyle(
              fontSize: 12,
            ),
          ),
          BottomWidget(launch: launch),
        ],
      ),
    );
  }
}

class BottomWidget extends StatelessWidget {
  final SpaceXlaunch launch;
  const BottomWidget({
    Key? key,
    required this.launch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.background,
      padding: const EdgeInsets.all(12.0),
      child: Row(
        children: [
          const SizedBox(
            width: 10,
          ),
          const Text("Live experience"),
          const Spacer(),
          IconButton(
            icon: const Icon(
              LineIcons.wikipediaW,
              color: Colors.white,
            ),
            onPressed: () async {
              final url = Uri.parse(launch.links!.wikipedia!);
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
          IconButton(
            icon: Icon(LineIcons.youtube, color: Palette.red),
            onPressed: () async {
              final url = Uri.parse(
                  'https://www.youtube.com/watch?v=${launch.links!.youtubeId}');
              if (await canLaunchUrl(url)) {
                await launchUrl(url);
              } else {
                throw 'Could not launch $url';
              }
            },
          ),
        ],
      ),
    );
  }
}

class HeaderWidget extends StatelessWidget {
  final SpaceXlaunch launch;
  const HeaderWidget({
    Key? key,
    required this.launch,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: 300,
      stretch: true,
      backgroundColor: const Color(0xFF0B0B14),
      flexibleSpace: FlexibleSpaceBar(
        stretchModes: const [
          StretchMode.zoomBackground,
        ],
        background: Stack(
          fit: StackFit.expand,
          children: [
            Positioned.fill(
              child: Image.network(launch.links!.flickr!.original!.isNotEmpty
                  ? launch.links!.flickr!.original!.first
                  : "https://www.spacex.com/static/images/share.jpg"),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${launch.name} Images",
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    CircleAvatar(
                      backgroundColor: Palette.background.withOpacity(0.5),
                      child: const Icon(
                        Icons.fullscreen,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
