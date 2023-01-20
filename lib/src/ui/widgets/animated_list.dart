import 'package:cosmosense/src/data/models/spacex_launch.dart';
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
    setState(() {
      topContainer = firstEelementOffset;
      close = scrollController.offset > 30;
    });
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
    const itemSize = 150.0;
    return ListView.builder(
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
              heightFactor: 0.6,
              alignment: Alignment.topCenter,
              child: AnimatedOpacity(
                duration: const Duration(milliseconds: 200),
                opacity: scale,
                child: Transform(
                  alignment: Alignment.bottomCenter,
                  transform: Matrix4.identity()..scale(scale, 1.0),
                  child: Card(
                      color: Palette.moon,
                      elevation: 5.0,
                      // margin: const EdgeInsets.all(10.0),
                      shadowColor: Palette.white,
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(
                                24.0,
                              ),
                              topRight: Radius.circular(24.0)),
                          side: BorderSide(color: Colors.black12, width: 2.20)),
                      child: SizedBox(
                        height: 100.0,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  left: 12.0, bottom: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Row(
                                    children: [
                                      Text(launch.name ?? "Launch AlphaX",
                                          overflow: TextOverflow.ellipsis,
                                          style: TextStyle(
                                              color: Palette.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 16)),
                                    ],
                                  ),
                                  const SizedBox(height: 10.0),
                                  Row(
                                    children: const [
                                      Text("120 quizz"),
                                      SizedBox(
                                        width: 15.0,
                                      ),
                                      Text("10 Taken")
                                    ],
                                  )
                                ],
                              ),
                            ),
                            Image.asset(
                              launch.links!.patch!.small ??
                                  "assets/icons/png/atom.png",
                              height: 80.0,
                              width: 80.0,
                            ),
                          ],
                        ),
                      )),
                ),
              ),
            ),
          );
        });
  }
}
