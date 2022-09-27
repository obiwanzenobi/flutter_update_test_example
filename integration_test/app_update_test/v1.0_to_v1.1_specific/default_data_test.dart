import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:update_example/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  testWidgets(
    'tap on a button after update should show updated status',
    (tester) async {
      await app.main();
      await tester.pumpAndSettle();

      final button = find.text('Load saved data');

      await tester.tap(button);
      await tester.pumpAndSettle();

      expect(find.text('Loaded string: UPDATED'), findsOneWidget);
    },
  );
}
