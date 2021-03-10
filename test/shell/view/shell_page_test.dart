import 'package:flutter_test/flutter_test.dart';
import 'package:idelub/shell/view/shell_page.dart';

import '../../helpers/helpers.dart';

void main() {
  group('ShellPage', () {
    testWidgets('Render shellView', (tester) async {
      await tester.pumpApp(const ShellPage());
      expect(find.byType(ShellView), findsOneWidget);
    });

    testWidgets('Should have an appBar with idelub in it', (tester) async {
      await tester.pumpApp(const ShellPage());
      expect(find.text('IDelub'), findsOneWidget);
    });
  });
}
