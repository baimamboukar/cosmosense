import 'package:cosmosense/src/data/keys/nasa_api.dart';
import 'package:cosmosense/src/data/models/apod.dart';
import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apodRiverpod = FutureProvider<APOD>(
  (ref) async {
    final dio = Dio();
    final data = await dio
        .get('https://api.nasa.gov/planetary/apod?api_key=$NASA_API_KEY');
    return APOD.fromJson(data.data);
  },
);
