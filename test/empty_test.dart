import 'dart:math';

import 'package:flutter_test/flutter_test.dart';

void main() {
  group('empty test', () {
    test('check math', () {
      final x = sqrt(1);
      const result = 1;
      expect(x, equals(result));
    });
  });
}
