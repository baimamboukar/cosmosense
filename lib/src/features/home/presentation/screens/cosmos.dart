import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/data/models/planet.dart';
import 'package:cosmosense/src/features/home/presentation/widgets/widgets.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:cosmosense/src/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

final activePlanetIndexRiverpod = StateProvider<int>((ref) => 0);
ValueNotifier<String> nicknameNotifier =
    ValueNotifier<String>(planets[0].details['nickname']);

@RoutePage()
class Cosmos extends ConsumerWidget {
  const Cosmos({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final controller = PageController();
    final listcontroller = ScrollController();
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/background.jpg"),
              fit: BoxFit.fill,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const SizedBox(
                height: 14,
              ),
              ValueListenableBuilder(
                valueListenable: nicknameNotifier,
                builder: (context, nickname, widget) => FlipInX(
                  child: Text(
                    nickname,
                    style: TextStyle(
                      fontSize: 22,
                      color: Palette.secondary,
                      fontFamily: "Daesang",
                    ),
                  ),
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
                  children: [
                    PlanetView(
                      planet: planets[0],
                    ),
                    PlanetView(
                      planet: planets[1],
                    ),
                    PlanetView(
                      planet: planets[2],
                    ),
                    PlanetView(
                      planet: planets[3],
                    ),
                    PlanetView(
                      planet: planets[4],
                    ),
                    PlanetView(
                      planet: planets[5],
                    ),
                    PlanetView(
                      planet: planets[6],
                    ),
                    PlanetView(
                      planet: planets[7],
                    ),
                    PlanetView(
                      planet: planets[8],
                    ),
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
                  focusToItem: (index) {
                    nicknameNotifier.value = planets[index].details['nickname'];
                    controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                  },
                  updateOnScroll: true,
                  //dynamicItemOpacity: .5,
                  dynamicItemSize: true,
                  onItemFocus: (index) {
                    controller.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 300),
                      curve: Curves.easeInOut,
                    );
                    nicknameNotifier.value = planets[index].details['nickname'];
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
  final Planet planet;
  const PlanetView({
    super.key,
    required this.planet,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
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
                    planet.image,
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
                        planet.name,
                        style: Styles.title().copyWith(fontSize: 32),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Text(
                        planet.history,
                        style: Styles.decorateText(
                            color: Palette.white, size: 14, bold: false),
                      ),
                      const SizedBox(
                        height: 14,
                      ),
                      Wrap(
                        alignment: WrapAlignment.spaceEvenly,
                        children: [
                          InfoBox(
                            label: "MASS",
                            data: planet.details['mass'],
                            color: Palette.primary,
                          ),
                          InfoBox(
                            label: "DISTANCE",
                            data: planet.details['distance_from_sun'],
                            color: Palette.mars,
                          ),
                          InfoBox(
                            label: "DIAMETER",
                            data: planet.details['diameter'],
                            color: Palette.jupiter,
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
    );
  }
}
