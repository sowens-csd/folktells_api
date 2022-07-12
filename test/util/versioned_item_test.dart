import 'package:folktells_api/util/versioned_item.dart';
import 'package:test/test.dart';

void main() {
  const version1 = "version1";
  const version2 = "version2";
  const version3 = "version3";

  final VersionedItem unchangedItem = VersionedItem(version2, version2);
  final VersionedItem matchingItem = VersionedItem(version2, version3);
  final VersionedItem sameAsItem = VersionedItem(version2, version2);
  final VersionedItem changedItem = VersionedItem(version3, version1);

  group('version comparison', () {
    test('matching versions show as true', () {
      expect(unchangedItem.matchesVersion(matchingItem.version), isTrue);
    });
    test('mismatched versions show as false', () {
      expect(unchangedItem.matchesVersion(changedItem.version), isFalse);
    });
    test('all same versions sameAs', () {
      expect(
          unchangedItem.isSameVersionAs(
              sameAsItem.version, sameAsItem.baseVersion),
          isTrue);
    });
    test('either version differs not sameAs', () {
      expect(
          unchangedItem.isSameVersionAs(
              matchingItem.version, matchingItem.baseVersion),
          isFalse);
    });
  });
}
