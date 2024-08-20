import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_first_flutter_app/main.dart'; // Adjust this import to match your actual package name

void main() {
  testWidgets('Sign Up page test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(SignUpApp());

    // Verify that the "Create an Account" text is displayed.
    expect(find.text('Create an Account'), findsOneWidget);

    // Verify that the sign-up button is displayed.
    expect(find.text('Sign Up'), findsOneWidget);

    // Enter text into the Email TextField.
    await tester.enterText(find.byType(TextField).first, 'test@example.com');
    expect(find.text('test@example.com'), findsOneWidget);

    // Enter text into the Password TextField.
    await tester.enterText(find.byType(TextField).at(1), 'password123');
    expect(find.text('password123'), findsOneWidget);

    // Enter text into the Confirm Password TextField.
    await tester.enterText(find.byType(TextField).at(2), 'password123');
    expect(find.text('password123'), findsOneWidget);

    // Tap the 'Sign Up' button.
    await tester.tap(find.text('Sign Up'));
    await tester.pump();

    // Add additional verifications here as needed.
  });
}
