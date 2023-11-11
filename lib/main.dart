import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/router/router.dart';
import 'package:cosmosense/src/router/router.gr.dart' as routes;
import 'package:cosmosense/src/utils/palette.dart';
import 'package:cosmosense/src/utils/theme/dark_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
        brightness: Brightness.dark,
        useMaterial3: true,
        textTheme: GoogleFonts.exoTextTheme(
          const TextTheme(
            bodyLarge: TextStyle(color: Colors.white, fontFamily: "Exo"),
          ).apply(bodyColor: Palette.white, displayColor: Palette.white),
        ),
        fontFamily: "Exo",
        typography: Typography.material2021(),
        visualDensity: VisualDensity.adaptivePlatformDensity,
        primarySwatch: const MaterialColor(0xFF143887, {
          100: Color(0xFF143887),
          700: Color(0xFFEEC36D),
          600: Color(0xFF143887),
          200: Color(0xFFEEC36D),
          500: Color(0xFF143887),
          400: Color(0xFFEEC36D),
          50: Color(0xFF337669),
          300: Color(0xFFEEC36D),
        }),
        primaryColor: Palette.primary,
        scaffoldBackgroundColor: Palette.scaffold,
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(
            color: Colors.white,
          ),
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          enabledBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          focusedBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
            ),
          ),
          errorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
          focusedErrorBorder: UnderlineInputBorder(
            borderSide: BorderSide(
              color: Colors.red,
            ),
          ),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
      ),
      darkTheme: darkTheme,
      themeMode: ThemeMode.light,
    );
  }
}

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
