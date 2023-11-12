import 'package:cosmosense/src/data/models/apod.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'apod_riverpod.g.dart';

@Riverpod(keepAlive: true)
Future<APOD> astronomicPictures(AstronomicPicturesRef ref) async {
  final dio = Dio();
  final data = await dio.get(
    dotenv.get('NASA_APOD_API_ENDPOINT'),
    queryParameters: {
      'api_key': dotenv.get('NASA_API_KEY'),
    },
  );
  return APOD.fromJson(data.data);
}
