import 'package:auto_route/auto_route.dart';
import 'package:cosmosense/main.dart';
import 'package:cosmosense/src/ui/screens/screens.dart';

@AdaptiveAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      page: Home,
      path: '/',
      initial: true,
      children: [
        AutoRoute(page: Cosmos, path: 'cosmos'),
        AutoRoute(page: NasaImage, path: 'image-of-the-day'),
        AutoRoute(page: Exploration, path: 'exploration'),
        AutoRoute(page: Weather, path: 'space-weather'),
      ],
    ),
    AutoRoute(page: LaunchDetails, path: '/launch-details'),
    AutoRoute(page: Login, path: '/login'),
    AutoRoute(page: Welcome, path: '/welcome')
  ],
)
class $AppRouter {}
