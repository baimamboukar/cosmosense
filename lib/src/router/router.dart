import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/src/router/router.gr.dart';

/// This class represents the router configuration for the Cosmosense app.
/// It extends the [$AppRouter] class and overrides the [routes] getter to define the app's routes.
/// The [$AppRouter] class is generated by the [auto_route](https://pub.dev/packages/auto_route) package.
/// All route should be annotated with the [RoutePage] annotation to be included in the router.
/// The [routerConfig] annotation is used to configure the router and replace the 'Screen' and 'Route' strings in the route names.
class AppRouter extends $AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: Home.page,
          path: '/',
          initial: false,
          children: [
            AutoRoute(page: Cosmos.page, path: 'cosmos'),
            AutoRoute(page: NasaImage.page, path: 'image-of-the-day'),
            AutoRoute(page: Exploration.page, path: 'exploration'),
            AutoRoute(page: Weather.page, path: 'space-weather'),
          ],
        ),
        AutoRoute(page: LaunchDetails.page, path: '/launch-details'),
        AutoRoute(page: Login.page, path: '/login'),
        AutoRoute(page: Welcome.page, path: '/welcome', initial: true)
      ];
}
