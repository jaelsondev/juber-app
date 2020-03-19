import 'package:dio/dio.dart';

import '../constants.dart';
import 'interceptors.dart';

class CustomDio {
  final Dio client;

  CustomDio(this.client) {
    client.options.baseUrl = BASE_URL;
    client.interceptors.add(CustomInterceptors());
    client.options.connectTimeout = 5000;
  }
}
