import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:juber/app/shared/services/user_service.dart';
import 'package:juber/app/shared/validators/form_error_state.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'signin_controller.g.dart';

class SigninController = _SigninControllerBase with _$SigninController;

abstract class _SigninControllerBase with Store {
  final UserService userService;

  _SigninControllerBase(this.userService);

  var formError = FormErrorState();

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  bool showPassword = true;

  @observable
  bool loading = false;

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  @action
  void setShowPassword() => showPassword = !showPassword;

  @computed
  bool get canSignin =>
      !formError.hasErrors && email.isNotEmpty && password.isNotEmpty;

  @action
  Future<void> signin() async {
    try {
      loading = true;
      formError.attributes['signinError'] = null;
      var data = {
        "email": email,
        "password": password,
      };
      var response = await userService.signin(data);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('user', json.encode(response['user']));
      prefs.setString('token', response['token'].toString());
      prefs.setBool('isLogged', true);
      Modular.to.pushNamedAndRemoveUntil(
          '/dashboard', (Route<dynamic> route) => false);
    } catch (e) {
      formError.attributes['signinError'] = e;
      loading = false;
    }
  }

  @action
  void validateEmail(String value) {
    Pattern pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regex = RegExp(pattern);

    if (!regex.hasMatch(value)) {
      formError.attributes['email'] = 'Insira um email válido.';
    } else {
      formError.attributes['email'] = null;
      formError.attributes['signinError'] = null;
    }
  }

  @action
  void validatePassword(String value) {
    if (value.isEmpty) {
      formError.attributes['password'] = 'Insira sua senha.';
    } else if (value.length < 8 || value.length > 18) {
      formError.attributes['password'] =
          'A senha deve conter entre 8 e 18 caracteres.';
    } else {
      formError.attributes['password'] = null;
      formError.attributes['signinError'] = null;
    }
  }

  List<ReactionDisposer> _disposers;

  void setupValidations() {
    _disposers = [
      reaction((_) => email, validateEmail),
      reaction((_) => password, validatePassword),
    ];
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }
}
