import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:juber/app/shared/custom_dio/custom_dio.dart';

class UserService extends Disposable {
  final CustomDio dio;

  UserService(this.dio);

  Future<dynamic> signin(Map<String, dynamic> data) async {
    try {
      var response = await dio.client.post('signin', data: data);
      return response.data;
    } on DioError catch (e) {
      if (e?.response != null && e.response.statusCode == 401) {
        throw ('Usuário ou senha inválidos.');
      } else {
        throw ('Falha ao entrar, tente novamente.');
      }
    }
  }

  Future<dynamic> signup(Map<String, dynamic> data) async {
    try {
      var response = await dio.client.post('signup', data: data);
      return response.data;
    } on DioError catch (e) {
      if (e?.response?.data != null) {
        throw e.response.data;
      } else {
        throw ('Falha ao fazer registro, tente novamente.');
      }
    }
  }

  @override
  void dispose() {}
}
