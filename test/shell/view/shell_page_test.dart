import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:idelub/shell/view/shell_page.dart';

import '../../helpers/helpers.dart';

void main() {
  const appBarKey = Key('appBar-tabbar');

  group('ShellPage', () {
    testWidgets('Render shellView', (tester) async {
      await tester.pumpApp(const ShellPage());
      expect(find.byType(ShellView), findsOneWidget);
    });

    testWidgets('The appbar should be present on the page', (tester) async {
      await tester.pumpApp(const ShellPage());
      expect(find.byKey(appBarKey), findsOneWidget);
    });
    testWidgets('The appbar should have exactly 4 buttons', (tester) async {
      await tester.pumpApp(const ShellPage());
      expect(find.byType(BarTabText), findsNWidgets(4));
    });
  });
}
