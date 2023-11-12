import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final dioProvider = Provider<Dio>(
  (ref) {
    return Dio(
      BaseOptions(
        connectTimeout: const Duration(seconds: 30),
        contentType: Headers.jsonContentType,
        receiveTimeout: const Duration(milliseconds: 30000),
        sendTimeout: const Duration(milliseconds: 30000),
        headers: {
          'Accept': 'application/json',
          'Accept-Language': 'en',
        },
      ),
    )..interceptors.add(
        LogInterceptor(
          responseBody: true,
          requestBody: true,
        ),
      );
  },
);

class RequestInterceptors extends Interceptor {}
