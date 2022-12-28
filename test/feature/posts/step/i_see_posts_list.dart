import 'package:flutter_test/flutter_test.dart';

Future<void> iSeePostsList(WidgetTester tester) async {
  final gesture = await tester.startGesture(Offset.zero /* THe position of your listview */);
// Manual scroll
  await gesture.moveBy(const Offset(0, 100));

  await tester.pump(); // flush the widget tree
}
