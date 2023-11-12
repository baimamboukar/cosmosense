import 'package:animate_do/animate_do.dart';
import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/data/models/planet.dart';
import 'package:cosmosense/src/ui/widgets/widgets.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:cosmosense/src/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';

final colorListener = ValueNotifier<Color>(Palette.mars);
final planetNameListener = ValueNotifier<Planet>(planets[0]);
final planetListener = ValueNotifier<Planet>(planets[0]);

@RoutePage()
class Weather extends ConsumerWidget {
  const Weather({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ValueListenableBuilder(
      valueListenable: colorListener,
      builder: (context, color, widget) => Column(
        children: [
          Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    color,
                    color.withOpacity(.55),
                    color.withOpacity(.2),
                  ],
                ),
                borderRadius: BorderRadius.circular(0),
              ),
              height: 300,
              child: ValueListenableBuilder(
                  valueListenable: planetNameListener,
                  builder: (context, planet, widget) {
                    return Column(
                      children: [
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(top: 10.0, left: 10),
                              child: RotatedBox(
                                quarterTurns: 1,
                                child: Text(
                                  planet.name,
                                  style: Styles.title().copyWith(
                                      fontFamily: "Daesang",
                                      fontSize: 30,
                                      color: Palette.white),
                                ),
                              ),
                            ),
                            Image.asset(
                              planet.image,
                              height: 180,
                              width: 180,
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 12),
                          child: Row(
                            children: [
                              CircleAvatar(
                                backgroundColor: planet.color,
                                child: Icon(
                                  LineIcons.flask,
                                  size: 28,
                                  color: Palette.white,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              const Text(
                                "Chemical composition",
                                style: TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 12, vertical: 4),
                          child: Text(
                            planet.details['weather']['atmosphere'],
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.normal),
                          ),
                        ),
                      ],
                    );
                  })),
          Expanded(
            child: Row(
              children: [
                const Expanded(
                  child: CircularListPage(),
                ),
                ValueListenableBuilder(
                  valueListenable: planetListener,
                  builder: (context, planet, widget) => Container(
                    decoration: BoxDecoration(
                      color: color.withOpacity(.25),
                      borderRadius: BorderRadius.circular(0),
                    ),
                    height: MediaQuery.of(context).size.height,
                    width: 130,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            WeatherInfoBox(
                              index: 1,
                              data: planet.details['weather']['temperature'],
                              label: 'Temperature',
                              iconPath: 'assets/images/uvindex.png',
                              color: Palette.secondary,
                            ),
                            WeatherInfoBox(
                              index: 2,
                              data: '200Pa',
                              label: 'Pressure',
                              iconPath: 'assets/images/pressure.png',
                              color: Palette.primary,
                            ),
                            WeatherInfoBox(
                              index: 3,
                              data: '200ml',
                              label: 'Humidity',
                              iconPath: 'assets/images/humidity.png',
                              color: Palette.grey,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class WeatherInfoBox extends StatelessWidget {
  final String data;
  final String label;
  final String iconPath;
  final Color color;
  final int index;
  const WeatherInfoBox({
    super.key,
    required this.data,
    required this.label,
    required this.iconPath,
    required this.color,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    return SlideInRight(
      //delay: const Duration(milliseconds: 250),
      from: 200,
      duration: Duration(milliseconds: index * 750),
      child: Padding(
        padding: const EdgeInsets.all(4.0),
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              height: 100,
              width: 120,
              decoration: BoxDecoration(
                color: color.withOpacity(0.65),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            Positioned(
              top: 40,
              left: 10,
              child: Text(
                data,
                style: TextStyle(
                    fontSize: 14,
                    fontFamily: "Exo",
                    color: Palette.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              bottom: 15,
              left: 10,
              child: Text(
                label,
                style: TextStyle(
                    fontSize: 12,
                    fontFamily: "Exo",
                    color: Palette.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Positioned(
              top: -10,
              right: -10,
              child: Image.asset(
                iconPath,
                color: color,
                height: 50,
                width: 50,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
