
import 'package:flutter_test/flutter_test.dart';
import 'package:sri_lanka_travel_planner/main.dart';

void main() {
  testWidgets('Travel Planner app loads', (WidgetTester tester) async {
    await tester.pumpWidget(const TravelPlannerApp());

    expect(find.byType(TravelPlannerApp), findsOneWidget);
    expect(find.text('LANKA EXPLORER'), findsOneWidget);

    // Complete the 3-second splash timer.
    await tester.pump(const Duration(seconds: 3));
    await tester.pump();
  });
}
