import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:juber/app/modules/signin/signin_controller.dart';
import 'package:juber/app/modules/signin/signin_module.dart';

void main() {
  initModule(SigninModule());
  SigninController signin;

  setUp(() {
    signin = SigninModule.to.get<SigninController>();
  });

  group('SigninController Test', () {
    test("First Test", () {
      expect(signin, isInstanceOf<SigninController>());
    });
  });
}
