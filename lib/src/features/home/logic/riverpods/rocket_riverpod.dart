import 'package:cosmosense/src/data/models/rocket.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'rocket_riverpod.g.dart';

@Riverpod(keepAlive: true)
Future<Rocket> rockets(RocketsRef sref, {required String rocketID}) async {
  final dio = Dio();
  final data = await dio.get('https://api.spacexdata.com/v4/rockets/$rocketID');
  return Rocket.fromJson(data.data);
}
