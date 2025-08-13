import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mvvm_provider/viewmodels/counter_viewmodel.dart';
import 'package:mvvm_provider/views/counter_view.dart';
import 'package:provider/provider.dart';

void main() {
  testWidgets('Counter increments when button is pressed',
      (WidgetTester tester) async {
    // Build the widget inside a ChangeNotifierProvider
    await tester.pumpWidget(
      ChangeNotifierProvider(
        create: (context) => CounterViewModel(),
        child: const MaterialApp(
          home: CounterView(),
        ),
      ),
    );

    // Verify that the initial count is 0
    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);

    // Tap the floating action button and trigger a frame
    await tester.tap(find.byIcon(Icons.add));
    await tester.pump();

    // Verify that the counter has incremented
    expect(find.text('0'), findsNothing);
    expect(find.text('1'), findsOneWidget);
  });
}
