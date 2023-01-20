import 'package:cosmosense/src/data/models/rocket.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final rocketRiverpod = FutureProvider.family<Rocket, String>(
  (ref, rocketID) async {
    final dio = Dio();
    final data =
        await dio.get('https://api.spacexdata.com/v4/rockets/$rocketID');
    return Rocket.fromJson(data.data);
  },
);
