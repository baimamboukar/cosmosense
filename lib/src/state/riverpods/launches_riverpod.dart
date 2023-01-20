import 'package:cosmosense/src/data/services/dio_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final spaceXlaunchesRiverpod = FutureProvider<String>(
  (ref) async {
    final dio = ref.watch(dioProvider);
    final data = await dio.get('https://api.spacexdata.com/v4/launches/');
    return data.toString();
  },
);
