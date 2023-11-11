import 'package:cosmosense/src/data/keys/nasa_api.dart';
import 'package:cosmosense/src/data/models/apod.dart';
import 'package:dio/dio.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'apod_riverpod.g.dart';

@Riverpod(keepAlive: true)
Future<APOD> astronomicPictures(AstronomicPicturesRef ref) async {
  final dio = Dio();
  final data = await dio
      .get('https://api.nasa.gov/planetary/apod?api_key=$NASA_API_KEY');
  return APOD.fromJson(data.data);
}
