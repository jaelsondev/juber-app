import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:juber/app/modules/dashboard/dashboard_controller.dart';
import 'package:juber/app/modules/dashboard/dashboard_module.dart';

void main() {
  initModule(DashboardModule());
  DashboardController dashboard;

  setUp(() {
    dashboard = DashboardModule.to.get<DashboardController>();
  });

  group('DashboardController Test', () {
    test("First Test", () {
      expect(dashboard, isInstanceOf<DashboardController>());
    });
  });
}
