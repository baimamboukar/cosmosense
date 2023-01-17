import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/router/router.gr.dart' as routes;
import 'package:cosmosense/src/router/router.gr.dart';
import 'package:cosmosense/src/utils/palette.dart';
import 'package:cosmosense/src/utils/theme/dark_theme.dart';
import 'package:cosmosense/src/utils/theme/light_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:line_icons/line_icons.dart';

Future<void> main() async {
  runApp(const ProviderScope(child: CosmoSense()));
}

class CosmoSense extends ConsumerStatefulWidget {
  const CosmoSense({super.key});
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _CosmoSenseState();
}

class _CosmoSenseState extends ConsumerState<CosmoSense> {
  late AppRouter appRouter;
  @override
  void initState() {
    appRouter = AppRouter();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerDelegate: appRouter.delegate(),
      routeInformationParser: appRouter.defaultRouteParser(),
      title: "CosmoSense",
      restorationScopeId: "cosmosense",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}

final _key = GlobalKey<ScaffoldState>();

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
      builder: (context, child, animation) => ScaleTransition(
        scale: animation,
        child: child,
      ),
      bottomNavigationBuilder: (context, router) {
        return BottomNavigationBar(
          elevation: 20,
          backgroundColor: Palette.black,
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
                LineIcons.satellite,
                size: 22,
              ),
              backgroundColor: Palette.primary,
              label: "satellites",
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
