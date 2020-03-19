import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CustomInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var token = prefs.getString('token');
    if (token != null && token.isNotEmpty) {
      options.headers.addAll({"Authorization": token});
    }
    print("REQUEST[${options.method}] => PATH: ${options.path}");
    return super.onRequest(options);
  }

  @override
  Future onResponse(Response response) {
    print("RESPONSE[${response.statusCode}] => PATH: ${response.request.path}");
    return super.onResponse(response);
  }

  @override
  Future onError(DioError err) async {
    print(
        "RESPONSE[${err.response.statusCode}] => PATH: ${err.response.request.path} => MESSAGE: ${err.response.data}");
    if (err.response.statusCode == 403) {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.remove('user');
      prefs.remove('token');
      prefs.setBool('isLogged', false);
      Modular.to.pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
    }
    return super.onError(err);
  }
}
