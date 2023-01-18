import 'package:animate_do/animate_do.dart';
import 'package:cosmosense/src/data/models/planet.dart';
import 'package:cosmosense/src/ui/widgets/widgets.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:cosmosense/src/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

final activePlanetIndexRiverpod = StateProvider<int>((ref) => 0);

class Cosmos extends ConsumerWidget {
  const Cosmos({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activePlanetIndex =
        ref.watch(activePlanetIndexRiverpod.notifier).state;
    final controller = PageController();
    final listcontroller = ScrollController();
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.contain,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 14,
              ),
              Text(
                'HUMANS PLANET',
                style: TextStyle(
                  fontSize: 22,
                  color: Palette.secondary,
                  fontFamily: "Daesang",
                ),
              ),
              Expanded(
                child: PageView(
                  controller: controller,
                  physics: const BouncingScrollPhysics(),
                  onPageChanged: (index) {
                    listcontroller.animateTo(
                      index * 100.0,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  children: const [
                    PlanetView(),
                    PlanetView(),
                    PlanetView(),
                    PlanetView(),
                    PlanetView(),
                    PlanetView(),
                    PlanetView(),
                    PlanetView(),
                    PlanetView(),
                    PlanetView(),
                  ],
                ),
              ),
              SizedBox(
                height: 90,
                child: ScrollSnapList(
                  listController: listcontroller,
                  background: Colors.transparent,
                  duration: 50,
                  curve: Curves.easeInOut,
                  focusToItem: (index) => controller.animateToPage(
                    index,
                    duration: const Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  ),
                  updateOnScroll: true,
                  //dynamicItemOpacity: .5,
                  dynamicItemSize: true,
                  onItemFocus: (index) {
                    controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  itemSize: 100,
                  itemBuilder: (BuildContext context, int index) {
                    final planet = planets[index];
                    return Container(
                      decoration: const BoxDecoration(
                        // image: DecorationImage(
                        //     fit: BoxFit.cover, image: AssetImage(planet.image)),
                        shape: BoxShape.circle,
                      ),
                      width: 85,
                      height: 85,
                      child: Center(
                        child: Image.asset(planet.image),
                      ),
                    );
                  },
                  itemCount: planets.length,
                  reverse: false,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class PlanetView extends StatelessWidget {
  const PlanetView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Transform(
      transform: Matrix4.identity(),
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 50,
            ),
            Stack(
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: -50,
                  right: 0,
                  child: ZoomIn(
                    duration: const Duration(seconds: 4),
                    child: Image.asset(
                      "assets/images/planetred.png",
                      height: 180,
                      width: 180,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Container(
                    //height: 180,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.transparent,
                        // border: Border.all(
                        //     color: Palette.primary, width: 0.0),
                        borderRadius: BorderRadius.circular(12.0)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "PLANET",
                          style: Styles.decorateText(
                              color: Palette.white, size: 18, bold: true),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "EARTH",
                          style: Styles.title().copyWith(fontSize: 32),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "This is a planet where humans live in harmony, before Elon musk decide to conquer MARS and chatGPT release. Before then, this planet was calm and peaceful.... But the tune has changed!",
                          style: Styles.decorateText(
                              color: Palette.white, size: 18, bold: false),
                        ),
                        const SizedBox(
                          height: 14,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: const [
                            InfoBox(
                              label: "POPULATION",
                              data: "7BILLION",
                            ),
                            InfoBox(
                              label: "AGE",
                              data: "5M YEARS",
                            ),
                            InfoBox(
                              label: "RADIUS",
                              data: "564k KM",
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
