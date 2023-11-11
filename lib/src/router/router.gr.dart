// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:cosmosense/main.dart' as _i3;
import 'package:cosmosense/src/data/models/spacex_launch.dart' as _i11;
import 'package:cosmosense/src/ui/screens/authentication/login.dart' as _i5;
import 'package:cosmosense/src/ui/screens/launch_details.dart' as _i4;
import 'package:cosmosense/src/ui/screens/shared_scaffold/astrobips.dart'
    as _i6;
import 'package:cosmosense/src/ui/screens/shared_scaffold/cosmos.dart' as _i1;
import 'package:cosmosense/src/ui/screens/shared_scaffold/exploration.dart'
    as _i2;
import 'package:cosmosense/src/ui/screens/shared_scaffold/weather.dart' as _i7;
import 'package:cosmosense/src/ui/screens/welcome.dart' as _i8;
import 'package:flutter/cupertino.dart' as _i10;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    Cosmos.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.Cosmos(),
      );
    },
    Exploration.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.Exploration(),
      );
    },
    Home.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.Home(),
      );
    },
    LaunchDetails.name: (routeData) {
      final args = routeData.argsAs<LaunchDetailsArgs>();
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LaunchDetails(
          key: args.key,
          launch: args.launch,
        ),
      );
    },
    Login.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.Login(),
      );
    },
    NasaImage.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.NasaImage(),
      );
    },
    Weather.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Weather(),
      );
    },
    Welcome.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.Welcome(),
      );
    },
  };
}

/// generated route for
/// [_i1.Cosmos]
class Cosmos extends _i9.PageRouteInfo<void> {
  const Cosmos({List<_i9.PageRouteInfo>? children})
      : super(
          Cosmos.name,
          initialChildren: children,
        );

  static const String name = 'Cosmos';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.Exploration]
class Exploration extends _i9.PageRouteInfo<void> {
  const Exploration({List<_i9.PageRouteInfo>? children})
      : super(
          Exploration.name,
          initialChildren: children,
        );

  static const String name = 'Exploration';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Home]
class Home extends _i9.PageRouteInfo<void> {
  const Home({List<_i9.PageRouteInfo>? children})
      : super(
          Home.name,
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LaunchDetails]
class LaunchDetails extends _i9.PageRouteInfo<LaunchDetailsArgs> {
  LaunchDetails({
    _i10.Key? key,
    required _i11.SpaceXlaunch launch,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          LaunchDetails.name,
          args: LaunchDetailsArgs(
            key: key,
            launch: launch,
          ),
          initialChildren: children,
        );

  static const String name = 'LaunchDetails';

  static const _i9.PageInfo<LaunchDetailsArgs> page =
      _i9.PageInfo<LaunchDetailsArgs>(name);
}

class LaunchDetailsArgs {
  const LaunchDetailsArgs({
    this.key,
    required this.launch,
  });

  final _i10.Key? key;

  final _i11.SpaceXlaunch launch;

  @override
  String toString() {
    return 'LaunchDetailsArgs{key: $key, launch: $launch}';
  }
}

/// generated route for
/// [_i5.Login]
class Login extends _i9.PageRouteInfo<void> {
  const Login({List<_i9.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.NasaImage]
class NasaImage extends _i9.PageRouteInfo<void> {
  const NasaImage({List<_i9.PageRouteInfo>? children})
      : super(
          NasaImage.name,
          initialChildren: children,
        );

  static const String name = 'NasaImage';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Weather]
class Weather extends _i9.PageRouteInfo<void> {
  const Weather({List<_i9.PageRouteInfo>? children})
      : super(
          Weather.name,
          initialChildren: children,
        );

  static const String name = 'Weather';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.Welcome]
class Welcome extends _i9.PageRouteInfo<void> {
  const Welcome({List<_i9.PageRouteInfo>? children})
      : super(
          Welcome.name,
          initialChildren: children,
        );

  static const String name = 'Welcome';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
