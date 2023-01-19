import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>(
  (ref) {
    return Dio(
      BaseOptions(
        sendTimeout: 30000,
        connectTimeout: 30000,
        receiveTimeout: 30000,
        contentType: Headers.jsonContentType,
        headers: {
          'Accept': 'application/json',
          'Accept-Language': 'en',
        },
      ),
    )..interceptors.add(
        LogInterceptor(responseBody: true, requestBody: true),
      );
  },
);

class RequestInterceptors extends Interceptor {}
