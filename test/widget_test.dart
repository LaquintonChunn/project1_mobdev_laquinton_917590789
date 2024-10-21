import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:project1_mobdev_laquinton_917590789/main.dart';

void main() {
  testWidgets('Login and navigate to Home screen', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(MyApp());

    // Verify that the Login screen is displayed
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Welcome'),
        findsNothing); // Check that home screen welcome message is not displayed

    // Enter username
    await tester.enterText(find.byType(TextField), 'testuser');

    // Tap the 'Login' button
    await tester.tap(find.text('Login'));
    await tester.pumpAndSettle(); // Wait for animations to finish

    // Verify that the Home screen is displayed
    expect(find.text('Welcome, testuser!'), findsOneWidget);
    expect(find.text('Login'),
        findsNothing); // Check that the login screen is no longer displayed

    // Check for navigation buttons
    expect(find.text('Seek Emergency Help'), findsOneWidget);
    expect(find.text('Seek Non-Emergency Help'), findsOneWidget);
    expect(find.text('Request Meal'), findsOneWidget);
    expect(find.text('Calendar'), findsOneWidget);
    expect(find.text('Take Picture'), findsOneWidget);
    expect(find.text('Near Me Map'), findsOneWidget);
  });
}
