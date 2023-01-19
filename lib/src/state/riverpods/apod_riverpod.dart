import 'package:cosmosense/src/data/models/apod.dart';
import 'package:cosmosense/src/data/services/dio_config.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final apodRiverpod = FutureProvider<APOD>(
  (ref) async {
    final dio = ref.watch(dioProvider);
    final data =
        await dio.get('https://api.nasa.gov/planetary/apod?api_key=DEMO_KEY');
    return APOD.fromJson(data.data);
  },
);
