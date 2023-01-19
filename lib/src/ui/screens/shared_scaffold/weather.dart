import 'package:animate_do/animate_do.dart';
import 'package:cosmosense/src/ui/widgets/widgets.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:cosmosense/src/utils/textstyles/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final colorListener = ValueNotifier<Color>(Palette.mars);
final planetNameListener = ValueNotifier<String>("MARS");

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
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0, left: 10),
                        child: RotatedBox(
                          quarterTurns: 1,
                          child: ValueListenableBuilder(
                            valueListenable: planetNameListener,
                            builder: (context, planet, widget) => Text(
                              planet,
                              style: Styles.title().copyWith(
                                  fontFamily: "Daesang",
                                  fontSize: 30,
                                  color: Palette.white),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              )),
          Expanded(
            child: Row(
              children: [
                const Expanded(
                  child: CircularListPage(),
                ),
                Container(
                  decoration: BoxDecoration(
                    color: color.withOpacity(.25),
                    borderRadius: BorderRadius.circular(0),
                  ),
                  height: MediaQuery.of(context).size.height,
                  width: 130,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        WeatherInfoBox(
                          index: 1,
                          data: '-145°F',
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
    Key? key,
    required this.data,
    required this.label,
    required this.iconPath,
    required this.color,
    required this.index,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideInRight(
      //delay: const Duration(milliseconds: 250),
      from: 200,
      duration: Duration(milliseconds: index * 750),
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
                  fontSize: 18, fontFamily: "Varino", color: Palette.white),
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
    );
  }
}
