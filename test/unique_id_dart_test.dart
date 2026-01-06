import 'package:test/test.dart';
import 'package:unique_id_dart/unique_id_dart.dart';

void main() {
  group('uniqueId', () {
    test('returns numeric string by default', () {
      final id = uniqueId();
      expect(id, isNotEmpty);
      expect(RegExp(r'^\d+$').hasMatch(id), isTrue);
    });

    test('returns UUID v4 when shorter is false', () {
      final id = uniqueId(shorter: false);
      expect(id, isNotEmpty);
      expect(
        RegExp(
          r'^[0-9a-f]{8}-[0-9a-f]{4}-4[0-9a-f]{3}-[89ab][0-9a-f]{3}-[0-9a-f]{12}$',
          caseSensitive: false,
        ).hasMatch(id),
        isTrue,
      );
    });
  });
}
