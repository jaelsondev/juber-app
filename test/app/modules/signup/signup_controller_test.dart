import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:juber/app/modules/signup/signup_controller.dart';
import 'package:juber/app/modules/signup/signup_module.dart';

void main() {
  initModule(SignupModule());
  SignupController signup;

  setUp(() {
    signup = SignupModule.to.get<SignupController>();
  });

  group('SignupController Test', () {
    test("First Test", () {
      expect(signup, isInstanceOf<SignupController>());
    });
  });
}
