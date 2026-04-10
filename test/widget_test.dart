import 'dart:ui';

import 'package:bmi_calculator/app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('BMI calculator home smoke test', (WidgetTester tester) async {
    await tester.binding.setSurfaceSize(const Size(800, 1600));
    addTearDown(() => tester.binding.setSurfaceSize(null));

    await tester.pumpWidget(const MyApp());

    expect(find.text('BMI Calculator'), findsOneWidget);
  });
}
