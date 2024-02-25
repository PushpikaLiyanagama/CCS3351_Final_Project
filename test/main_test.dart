import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:final_project/main.dart' as app;

void main() {
  testWidgets('MyApp widget test', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(app.MyApp());

    // Verify if GetMaterialApp widget is used.
    expect(find.byType(GetMaterialApp), findsOneWidget);

    // Verify if the title is correct.
    expect(find.text('Blood Sugar Monitor'), findsOneWidget);

    // Verify if inputScreen is the home screen.
    // Note: This assumes inputScreen has a widget with a key or text that can be searched for.
    // For example, if inputScreen contains a Text widget with 'Input Screen' text, 
    // you could use the following line to verify its presence:
    // expect(find.text('Input Screen'), findsOneWidget);
    
    // If inputScreen has a unique identifier or key, you would use that instead, like so:
    // expect(find.byKey(Key('unique_key_for_input_screen')), findsOneWidget);
    // You might need to modify inputScreen to include a testable identifier if it doesn't have one.
  });
}
