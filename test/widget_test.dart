import 'package:bank_app/ui/screens/main/user_profile_bank_app.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const UserProfileBankApp());
  });
}
