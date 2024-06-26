import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/router/router.gr.dart' as routes;
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:heroicons/heroicons.dart';

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
        icon: HeroIcon(
          HeroIcons.globeEuropeAfrica,
          size: 22,
        ),
        label: "cosmos",
      ),
      const NavigationDestination(
        icon: HeroIcon(
          HeroIcons.sparkles,
          size: 22,
        ),
        label: "astrobips",
      ),
      const NavigationDestination(
        icon: HeroIcon(
          HeroIcons.rocketLaunch,
          size: 22,
        ),
        label: "launches",
      ),
      const NavigationDestination(
        icon: HeroIcon(
          HeroIcons.sun,
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
          backgroundColor: Theme.of(context).scaffoldBackgroundColor,
          selectedIndex: router.activeIndex,
          onDestinationSelected: (index) => router.setActiveIndex(index),
          destinations: navigationDestinations,
        );
      },
    );
  }
}
