import 'package:dio/dio.dart';
import 'package:juber/app/app_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';
import 'package:juber/app/app_widget.dart';
import 'package:juber/app/modules/dashboard/dashboard_module.dart';
import 'package:juber/app/modules/home/home_module.dart';
import 'package:juber/app/modules/signin/signin_module.dart';
import 'package:juber/app/modules/signup/signup_module.dart';
import 'package:juber/app/shared/custom_dio/custom_dio.dart';
import 'package:juber/app/shared/services/user_service.dart';

class AppModule extends MainModule {
  @override
  List<Bind> get binds => [
        Bind((i) => Dio()),
        Bind((i) => CustomDio(i.get<Dio>())),
        Bind((i) => UserService(AppModule.to.get<CustomDio>())),
        Bind((i) => AppController()),
      ];

  @override
  List<Router> get routers => [
        Router('/', module: HomeModule()),
        Router('/signin', module: SigninModule()),
        Router('/signup', module: SignupModule()),
        Router('/dashboard', module: DashboardModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
