import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_modular/flutter_modular_test.dart';

import 'package:juber/app/modules/signup/signup_page.dart';

main() {
  testWidgets('SignupPage has title', (WidgetTester tester) async {
    await tester.pumpWidget(buildTestableWidget(SignupPage(title: 'Signup')));
    final titleFinder = find.text('Signup');
    expect(titleFinder, findsOneWidget);
  });
}
