import 'package:flutter_test/flutter_test.dart';
import 'package:news_app_ui_setup/main.dart';

void main() {
  testWidgets('App smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const NotesApp());
  });
}
