import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:juber/app/shared/services/user_service.dart';
import 'package:juber/app/shared/validators/form_error_state.dart';
import 'package:mobx/mobx.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'signup_controller.g.dart';

class SignupController = _SignupControllerBase with _$SignupController;

abstract class _SignupControllerBase with Store {
  final UserService userService;

  _SignupControllerBase(this.userService);

  var formError = FormErrorState();

  @observable
  String name = '';

  @observable
  String email = '';

  @observable
  String password = '';

  @observable
  String confirmPassword = '';

  @observable
  bool showPassword = true;

  @observable
  bool showConfirmPassword = true;

  @observable
  bool loading = false;

  @action
  void setName(String value) => name = value;

  @action
  void setEmail(String value) => email = value;

  @action
  void setPassword(String value) => password = value;

  @action
  void setConfirmPassword(String value) => confirmPassword = value;

  @action
  void setShowPassword() => showPassword = !showPassword;

  @action
  void setShowConfirmPassword() => showConfirmPassword = !showConfirmPassword;

  @computed
  bool get canSignup =>
      !formError.hasErrors &&
      name.isNotEmpty &&
      email.isNotEmpty &&
      password.isNotEmpty &&
      confirmPassword.isNotEmpty;

  @action
  Future<void> signup() async {
    try {
      loading = true;
      formError.attributes['signupError'] = null;
      var data = {
        "name": name,
        "email": email,
        "password": password,
        "password_confirmation": confirmPassword,
      };
      var response = await userService.signup(data);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      prefs.setString('user', json.encode(response['user']));
      prefs.setString('token', response['token'].toString());
      prefs.setBool('isLogged', true);
      Modular.to.pushNamedAndRemoveUntil(
          '/dashboard', (Route<dynamic> route) => false);
    } catch (e) {
      formError.attributes['signupError'] = e.toString();
      loading = false;
    }
  }

  @action
  void validateName(String value) {
    if (value.length < 3 || value.length > 20) {
      formError.attributes['name'] = 'O Nome deve conter de 3 à 20 caracteres.';
    } else {
      formError.attributes['name'] = null;
      formError.attributes['signupError'] = null;
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
      formError.attributes['signupError'] = null;
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
      formError.attributes['signupError'] = null;
    }
  }

  @action
  void validateConfirmPassword(String value) {
    if (value.isEmpty) {
      formError.attributes['password_confirmation'] = 'Insira sua senha.';
    } else if (value.length < 8 || value.length > 18) {
      formError.attributes['password_confirmation'] =
          'A senha deve conter entre 8 e 18 caracteres.';
    } else if (value != password) {
      formError.attributes['password_confirmation'] = 'Senhas não coincidem.';
    } else {
      formError.attributes['password_confirmation'] = null;
      formError.attributes['signupError'] = null;
    }
  }

  List<ReactionDisposer> _disposers;

  void setupValidations() {
    _disposers = [
      reaction((_) => name, validateName),
      reaction((_) => email, validateEmail),
      reaction((_) => password, validatePassword),
      reaction((_) => confirmPassword, validateConfirmPassword),
    ];
  }

  void dispose() {
    for (final d in _disposers) {
      d();
    }
  }
}
