import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:folktells_api/folktells_api.dart';

void main() {
  const String specialCharacterName = "`!@#\$%^&*()-[]{}\|\"',.<>?/_+=~";
  group('sharedShareGroup', () {
    test('roundtrips', () {
      var sharedShareGroup =
          SharedShareGroup('shareGroup1', 'group 1', 'user 1', 'invitation 1');
      var jsonMap = sharedShareGroup.toJson();
      var roundtrip = SharedShareGroup.fromJson(jsonMap);
      expect(sharedShareGroup.id, roundtrip.id);
      expect(sharedShareGroup.name, roundtrip.name);
    });
    test('roundtrips with special characters', () {
      var sharedShareGroup = SharedShareGroup(
          'groupId1', specialCharacterName, 'userId1', 'invitationId1');
      var jsonMap = sharedShareGroup.toJson();
      var roundtrip = SharedShareGroup.fromJson(jsonMap);
      expect(sharedShareGroup.id, roundtrip.id);
      expect(sharedShareGroup.name, roundtrip.name);
    });
    test('encodes with special characters', () {
      var groupName = "Test's group";
      var sharedShareGroup =
          SharedShareGroup('groupId1', groupName, 'userId1', 'invitationId1');
      var jsonMap = sharedShareGroup.toJson();
      var jsonString = jsonEncode(jsonMap);
      var decodedMap = jsonDecode(jsonString);
      var roundtrip = SharedShareGroup.fromJson(decodedMap);
      expect(roundtrip.name, groupName);
    });
  });
}
