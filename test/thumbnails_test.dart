import 'dart:typed_data';

import 'package:flutter_test/flutter_test.dart';

import 'package:video_editor/src/utils/thumbnails.dart';

void main() {
  group('thumbnailAtOrNull', () {
    test('returns null for an empty list', () {
      expect(thumbnailAtOrNull(<Uint8List>[], 0), isNull);
    });

    test('returns null for an out of range index', () {
      final thumbnails = <Uint8List>[
        Uint8List.fromList([1]),
      ];

      expect(thumbnailAtOrNull(thumbnails, 1), isNull);
    });

    test('returns the thumbnail at the requested index', () {
      final first = Uint8List.fromList([1]);
      final second = Uint8List.fromList([2]);
      final thumbnails = <Uint8List>[first, second];

      expect(thumbnailAtOrNull(thumbnails, 1), same(second));
    });
  });
}
