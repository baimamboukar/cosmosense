// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i3;
import 'package:cosmosense/main.dart' as _i1;
import 'package:cosmosense/src/data/models/spacex_launch.dart' as _i5;
import 'package:cosmosense/src/ui/screens/screens.dart' as _i2;
import 'package:flutter/material.dart' as _i4;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Home.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i1.Home(),
      );
    },
    LaunchDetails.name: (routeData) {
      final args = routeData.argsAs<LaunchDetailsArgs>();
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: _i2.LaunchDetails(
          launch: args.launch,
          key: args.key,
        ),
      );
    },
    Login.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.Login(),
      );
    },
    Signin.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.Signin(),
      );
    },
    Welcome.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.Welcome(),
      );
    },
    Cosmos.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.Cosmos(),
      );
    },
    NasaImage.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.NasaImage(),
      );
    },
    Exploration.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.Exploration(),
      );
    },
    Weather.name: (routeData) {
      return _i3.AdaptivePage<dynamic>(
        routeData: routeData,
        child: const _i2.Weather(),
      );
    },
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(
          Home.name,
          path: '/',
          children: [
            _i3.RouteConfig(
              Cosmos.name,
              path: 'cosmos',
              parent: Home.name,
            ),
            _i3.RouteConfig(
              NasaImage.name,
              path: 'image-of-the-day',
              parent: Home.name,
            ),
            _i3.RouteConfig(
              Exploration.name,
              path: 'exploration',
              parent: Home.name,
            ),
            _i3.RouteConfig(
              Weather.name,
              path: 'space-weather',
              parent: Home.name,
            ),
          ],
        ),
        _i3.RouteConfig(
          LaunchDetails.name,
          path: '/launch-details',
        ),
        _i3.RouteConfig(
          Login.name,
          path: '/login',
        ),
        _i3.RouteConfig(
          Signin.name,
          path: '/signin',
        ),
        _i3.RouteConfig(
          Welcome.name,
          path: '/welcome',
        ),
      ];
}

/// generated route for
/// [_i1.Home]
class Home extends _i3.PageRouteInfo<void> {
  const Home({List<_i3.PageRouteInfo>? children})
      : super(
          Home.name,
          path: '/',
          initialChildren: children,
        );

  static const String name = 'Home';
}

/// generated route for
/// [_i2.LaunchDetails]
class LaunchDetails extends _i3.PageRouteInfo<LaunchDetailsArgs> {
  LaunchDetails({
    required _i5.SpaceXlaunch launch,
    _i4.Key? key,
  }) : super(
          LaunchDetails.name,
          path: '/launch-details',
          args: LaunchDetailsArgs(
            launch: launch,
            key: key,
          ),
        );

  static const String name = 'LaunchDetails';
}

class LaunchDetailsArgs {
  const LaunchDetailsArgs({
    required this.launch,
    this.key,
  });

  final _i5.SpaceXlaunch launch;

  final _i4.Key? key;

  @override
  String toString() {
    return 'LaunchDetailsArgs{launch: $launch, key: $key}';
  }
}

/// generated route for
/// [_i2.Login]
class Login extends _i3.PageRouteInfo<void> {
  const Login()
      : super(
          Login.name,
          path: '/login',
        );

  static const String name = 'Login';
}

/// generated route for
/// [_i2.Signin]
class Signin extends _i3.PageRouteInfo<void> {
  const Signin()
      : super(
          Signin.name,
          path: '/signin',
        );

  static const String name = 'Signin';
}

/// generated route for
/// [_i2.Welcome]
class Welcome extends _i3.PageRouteInfo<void> {
  const Welcome()
      : super(
          Welcome.name,
          path: '/welcome',
        );

  static const String name = 'Welcome';
}

/// generated route for
/// [_i2.Cosmos]
class Cosmos extends _i3.PageRouteInfo<void> {
  const Cosmos()
      : super(
          Cosmos.name,
          path: 'cosmos',
        );

  static const String name = 'Cosmos';
}

/// generated route for
/// [_i2.NasaImage]
class NasaImage extends _i3.PageRouteInfo<void> {
  const NasaImage()
      : super(
          NasaImage.name,
          path: 'image-of-the-day',
        );

  static const String name = 'NasaImage';
}

/// generated route for
/// [_i2.Exploration]
class Exploration extends _i3.PageRouteInfo<void> {
  const Exploration()
      : super(
          Exploration.name,
          path: 'exploration',
        );

  static const String name = 'Exploration';
}

/// generated route for
/// [_i2.Weather]
class Weather extends _i3.PageRouteInfo<void> {
  const Weather()
      : super(
          Weather.name,
          path: 'space-weather',
        );

  static const String name = 'Weather';
}
