import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/data/models/spacex_launch.dart';
import 'package:cosmosense/src/features/home/presentation/widgets/widgets.dart';
import 'package:cosmosense/src/router/router.gr.dart' as routes;
import 'package:cosmosense/src/utils/date_parser.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FadeAnimatedList extends ConsumerStatefulWidget {
  final List<SpaceXlaunch> launches;
  const FadeAnimatedList({
    super.key,
    required this.launches,
  });
  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _FadeAnimatedListState();
}

class _FadeAnimatedListState extends ConsumerState<FadeAnimatedList> {
  final scrollController = ScrollController();
  double topContainer = 0;
  bool close = false;
  void listenScroll() {
    double firstEelementOffset = scrollController.offset / 80;
    setState(
      () {
        topContainer = firstEelementOffset;
        close = scrollController.offset > 30;
      },
    );
  }

  @override
  void initState() {
    scrollController.addListener(listenScroll);
    super.initState();
  }

  @override
  void dispose() {
    scrollController.removeListener(listenScroll);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // const itemSize = 150.0;
    return ListView.builder(
        // reverse: true,
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.launches.length,
        itemBuilder: (BuildContext context, int index) {
          var launch = widget.launches[index];

          double scale = 1.0;
          if (topContainer > 0.1) {
            scale = index + 0.5 - topContainer;
            if (scale < 0) {
              scale = 0;
            } else if (scale > 1) {
              scale = 1;
            }
          }
          return GestureDetector(
            onTap: () {},
            child: Align(
              heightFactor: 0.7,
              alignment: Alignment.topCenter,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: scale,
                child: Transform(
                    alignment: Alignment.bottomCenter,
                    transform: Matrix4.identity()..scale(scale, 1.0),
                    child:
                        // find a color on Palette.variants

                        GestureDetector(
                      onTap: () {
                        context.router.push(
                          routes.LaunchDetails(
                            launch: launch,
                          ),
                        );
                      },
                      child: Card(
                        color: Palette.scaffold.withOpacity(.8),
                        elevation: 5.0,
                        // margin: const EdgeInsets.all(10.0),
                        shadowColor: Palette.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: const BorderRadius.only(
                                topLeft: Radius.circular(
                                  24.0,
                                ),
                                topRight: Radius.circular(24.0)),
                            side: BorderSide(color: Palette.grey, width: 2.20)),
                        child: Column(
                          children: [
                            const SizedBox(
                              height: 10,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 12.0, bottom: 8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Row(
                                        children: [
                                          Text(launch.name ?? "Launch AlphaX",
                                              overflow: TextOverflow.ellipsis,
                                              style: TextStyle(
                                                color: Palette.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 15,
                                              )),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          // Badge(
                                          //   success: launch.success ?? true,
                                          // ),
                                          CosmosenseBadge(
                                              success: launch.upcoming ?? false)
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 4,
                                      ),
                                      Row(
                                        children: [
                                          SelectableText(
                                            "launched on ${DateParser.parse(launch.dateLocal ?? "2020-10-07T00:00:00Z")} by SpaceX",
                                            style:
                                                const TextStyle(fontSize: 8.5),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                Image.network(
                                  launch.links!.patch!.small ??
                                      "https://images2.imgbox.com/ab/5a/Pequxd5d_o.png",
                                  height: 80.0,
                                  width: 80.0,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    )),
              ),
            ),
          );
        });
  }
}
