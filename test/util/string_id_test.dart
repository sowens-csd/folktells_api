import 'package:folktells_api/util/string_id.dart';
import 'package:test/test.dart';

void main() {
  const String idVal1 = "id1";
  const String prefix1 = "p1";
  const String prefix2 = "p2";
  const String title1 = "title1";
  const String complicatedTitle =
      "The Title with `~!@#\$%^&*()-=_+[]{}\|;:'\",.<>/? everything";
  const String expectedTitle1Id = "${prefix1}_$title1";
  const String expectedComplicatedTitleId =
      "${prefix1}_The_Title_with_`~!@#\$%^&*()-=_+[]{}|;:\'\",.<>/?_everything";
  setUp(() {});

  group('creation', () {
    test('works properly from string', () {
      StringId id = const StringId(idVal1);
      expect(id.asString(), idVal1);
    });
    test('works properly from stringId', () {
      StringId id1 = const StringId(idVal1);
      StringId id2 = StringId.fromStringId(id1);
      expect(id2, id1);
      expect(id2.asString(), idVal1);
    });
    test('works properly from simple title', () {
      StringId id1 = StringId.fromTitle(prefix: prefix1, title: title1);
      expect(id1.asString(), expectedTitle1Id);
    });
    test('differentiates by prefix', () {
      StringId id1 = StringId.fromTitle(prefix: prefix1, title: title1);
      StringId id2 = StringId.fromTitle(prefix: prefix1, title: title1);
      expect(id1, id2);
      id2 = StringId.fromTitle(prefix: prefix2, title: title1);
      expect(id1, isNot(id2));
    });
    test('encodes complex title', () {
      StringId id1 =
          StringId.fromTitle(prefix: prefix1, title: complicatedTitle);
      expect(id1.asString(), expectedComplicatedTitleId);
    });
  });
}
