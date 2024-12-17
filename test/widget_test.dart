import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bmi_calculator/main.dart'; // Adjust the import based on your project structure

void main() {
  testWidgets('BMI Calculator test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const BMICalculatorApp());

    // Enter height and weight
    await tester.enterText(find.byType(TextField).at(0), '1.75');
    await tester.enterText(find.byType(TextField).at(1), '70');

    // Tap the 'Calculate BMI' button and trigger a frame.
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump();

    // Verify the BMI result
    expect(find.text('BMI: 22.86 (Normal)'), findsOneWidget);
  });
}
