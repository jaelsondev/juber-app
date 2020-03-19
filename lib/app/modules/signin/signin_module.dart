import 'package:juber/app/app_module.dart';
import 'package:juber/app/modules/signin/signin_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:juber/app/modules/signin/signin_page.dart';
import 'package:juber/app/shared/custom_dio/custom_dio.dart';
import 'package:juber/app/shared/services/user_service.dart';

class SigninModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => UserService(AppModule.to.get<CustomDio>())),
        Bind((i) => SigninController(SigninModule.to.get<UserService>())),
      ];

  @override
  List<Router> get routers => [
        Router('/', child: (_, args) => SigninPage()),
      ];

  static Inject get to => Inject<SigninModule>.of();
}
