import 'package:flutter_test/flutter_test.dart';
import 'package:myapp/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('FirebaseServiceServiceTest -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
