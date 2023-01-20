import 'package:cosmosense/src/data/models/spacex_launch.dart';
import 'package:cosmosense/src/data/services/dio_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final spaceXlaunchesRiverpod = FutureProvider<List<SpaceXlaunch>>(
  (ref) async {
    final dio = ref.watch(dioProvider);
    final data = await dio.get('https://api.spacexdata.com/v4/launches/');
    return data.data
        .map<SpaceXlaunch>((launch) => SpaceXlaunch.fromJson(launch))
        .toList();
  },
);
