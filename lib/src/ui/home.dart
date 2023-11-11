import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/router/router.gr.dart' as routes;
import 'package:cosmosense/src/utils/palette.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';

final _key = GlobalKey<ScaffoldState>();

@RoutePage()
class Home extends ConsumerStatefulWidget {
  const Home({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomeState();
}

class _HomeState extends ConsumerState<Home> {
  @override
  Widget build(BuildContext context) {
    return AutoTabsScaffold(
      scaffoldKey: _key,
      routes: const [
        routes.Cosmos(),
        routes.NasaImage(),
        routes.Exploration(),
        routes.Weather(),
      ],
      transitionBuilder: (context, child, animation) => ScaleTransition(
        scale: animation,
        child: child,
      ),
      bottomNavigationBuilder: (context, router) {
        return BottomNavigationBar(
          elevation: 20,
          backgroundColor: Palette.scaffold,
          selectedItemColor: Palette.secondary,
          unselectedItemColor: Palette.secondary.withOpacity(.8),
          currentIndex: router.activeIndex,
          onTap: (index) => router.setActiveIndex(index),
          type: BottomNavigationBarType.fixed,
          items: [
            BottomNavigationBarItem(
              icon: const Icon(
                LineIcons.globe,
                size: 22,
              ),
              backgroundColor: Palette.primary,
              label: "cosmos",
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                LineIcons.userAstronaut,
                size: 22,
              ),
              backgroundColor: Palette.primary,
              label: "astrobips",
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                LineIcons.rocket,
                size: 22,
              ),
              backgroundColor: Palette.primary,
              label: "launches",
            ),
            BottomNavigationBarItem(
              icon: const Icon(
                Icons.sunny_snowing,
                size: 22,
              ),
              backgroundColor: Palette.primary,
              label: "weather",
            ),
          ],
        );
      },
    );
  }
}
