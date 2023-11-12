import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/router/router.gr.dart' as routes;
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
    final navigationDestinations = [
      const NavigationDestination(
        icon: Icon(
          LineIcons.globe,
          size: 22,
        ),
        label: "cosmos",
      ),
      const NavigationDestination(
        icon: Icon(
          LineIcons.userAstronaut,
          size: 22,
        ),
        label: "astrobips",
      ),
      const NavigationDestination(
        icon: Icon(
          LineIcons.rocket,
          size: 22,
        ),
        label: "launches",
      ),
      const NavigationDestination(
        icon: Icon(
          Icons.sunny_snowing,
          size: 22,
        ),
        label: "weather",
      ),
    ];
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
        return NavigationBar(
          selectedIndex: router.activeIndex,
          onDestinationSelected: (index) => router.setActiveIndex(index),
          destinations: navigationDestinations,
        );
      },
    );
  }
}
