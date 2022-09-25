import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:update_example/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets('tap on the floating action button, verify counter',
      (tester) async {

    app.main();
    await tester.pumpAndSettle();

    final fab = find.text('Load saved data');

    await tester.tap(fab);
    await tester.pumpAndSettle();

    expect(find.text('Loaded string: NEW'), findsOneWidget);
  });
}
