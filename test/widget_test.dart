
import 'package:flutter_test/flutter_test.dart';
import 'package:study_group_organizer/main.dart';

void main() {
  testWidgets('App should show welcome screen', (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    // Verify app title is present
    expect(find.text('Study Group Organizer'), findsOneWidget);
    
    // Verify Get Started button exists
    expect(find.text('Get Started'), findsOneWidget);
    
    // Test navigation to login/signup page
    await tester.tap(find.text('Get Started'));
    await tester.pumpAndSettle();
    
    // Verify login/signup page elements
    expect(find.text('Choose Login or Sign Up'), findsOneWidget);
    expect(find.text('Login'), findsOneWidget);
    expect(find.text('Sign Up'), findsOneWidget);
  });
}