import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'dashboard_controller.g.dart';

class DashboardController = _DashboardControllerBase with _$DashboardController;

abstract class _DashboardControllerBase with Store {
  @action
  Future<void> logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('user');
    prefs.remove('token');
    prefs.setBool('isLogged', false);
    Modular.to.pushNamedAndRemoveUntil('/', (Route<dynamic> route) => false);
  }
}
