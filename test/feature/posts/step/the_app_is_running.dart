import 'package:flutter_test/flutter_test.dart';
import 'package:hoshmand_test/main.dart';

Future<void> theAppIsRunning(WidgetTester tester) async {
  await tester.pumpWidget(const MyApp());
}
