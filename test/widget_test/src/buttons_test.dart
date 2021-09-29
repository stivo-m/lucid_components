import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:lucid_components/buttons.dart';
import 'package:lucid_components/src/enums.dart';

void main() {
  group('LucidButton', () {
    testWidgets(
      'should render properly',
      (WidgetTester tester) async {
        const String testData = 'test';
        await tester.pumpWidget(
          MaterialApp(
            home: Material(
              child: LucidButton(
                buttonText: testData,
                onPressed: () {},
              ),
            ),
          ),
        );

        await tester.pumpAndSettle();

        expect(find.text(testData), findsOneWidget);
        expect(find.byType(CircularProgressIndicator), findsNothing);
      },
    );

    testWidgets(
      'should render properly when busy',
      (WidgetTester tester) async {
        const String testData = 'test';
        await tester.pumpWidget(
          MaterialApp(
            home: Material(
              child: LucidButton(
                buttonText: testData,
                buttonState: ButtonState.BUSY,
                onPressed: () {},
              ),
            ),
          ),
        );

        await tester.pump();

        expect(find.text(testData), findsNothing);
        expect(find.byType(CircularProgressIndicator), findsOneWidget);
      },
    );
  });
}
