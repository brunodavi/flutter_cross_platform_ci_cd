import 'package:flutter_test/flutter_test.dart';

import 'package:counter_population/main.dart';

void main() {
  testWidgets('Counter no decrements on start', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    await tester.tap(find.text("-"));
    await tester.pump();

    expect(find.text('0'), findsOneWidget);
    expect(find.text('1'), findsNothing);
  });

  testWidgets('Counter increments at full', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    for (var i = 0; i < 11; i++) {
      await tester.tap(find.text("+"));
      await tester.pump();
    }

    expect(find.text('11'), findsNothing);
    expect(find.text('10'), findsOneWidget);
  });
}
