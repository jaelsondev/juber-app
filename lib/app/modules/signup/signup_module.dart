import 'package:juber/app/app_module.dart';
import 'package:juber/app/modules/signup/signup_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:juber/app/modules/signup/signup_page.dart';
import 'package:juber/app/shared/custom_dio/custom_dio.dart';
import 'package:juber/app/shared/services/user_service.dart';

class SignupModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UserService(AppModule.to.get<CustomDio>())),
        Bind((i) => SignupController(SignupModule.to.get<UserService>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SignupPage()),
      ];

  static Inject get to => Inject<SignupModule>.of();
}
