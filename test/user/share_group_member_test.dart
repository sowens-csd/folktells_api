import 'package:flutter_test/flutter_test.dart';
import 'package:folktells_api/folktells_api.dart';

import 'test_group_data.dart';

void main() {
  const String pageToken1 = "page1";
  group('mapping', () {
    test('json mapping roundtrips', () {
      XShareGroupMember member1 = TestGroupMemberData.member1;
      var map = member1.toJson();
      var member2 = XShareGroupMember.fromJson(map);
      expectExhaustiveCompareEquals(member1, member2);
    });
    test('ShareGroupMembers json mapping roundtrips with empty members', () {
      ShareGroupMembers members1 =
          ShareGroupMembers(TestSharedShareGroupData.sharedGroup1, []);
      var map = members1.toJson();
      var members2 = ShareGroupMembers.fromJson(map);
      expect(members1.group.id, members2.group.id);
      expect(members1.members, members2.members);
    });
    test('ShareGroupMembers json mapping roundtrips with members', () {
      ShareGroupMembers members1 = ShareGroupMembers(
          TestSharedShareGroupData.sharedGroup1, [TestGroupMemberData.member1]);
      var map = members1.toJson();
      var members2 = ShareGroupMembers.fromJson(map);
      expect(members1.group.id, members2.group.id);
      expect(members1.members.length, members2.members.length);
      expectExhaustiveCompareEquals(
          members1.members.first, members2.members.first);
    });
    test('SharedGroupMembersResponse json mapping roundtrips with empty groups',
        () {
      ShareGroupMembersResponse response1 =
          ShareGroupMembersResponse(pageToken1, []);
      var map = response1.toJson();
      var response2 = ShareGroupMembersResponse.fromJson(map);
      expect(response1.pageToken, response2.pageToken);
      expect(response1.groups, response2.groups);
    });
    test('SharedGroupMembersResponse json mapping roundtrips with groups', () {
      ShareGroupMembers members1 = ShareGroupMembers(
          TestSharedShareGroupData.sharedGroup1, [TestGroupMemberData.member1]);
      ShareGroupMembersResponse response1 =
          ShareGroupMembersResponse(pageToken1, [members1]);
      var map = response1.toJson();
      var response2 = ShareGroupMembersResponse.fromJson(map);
      expect(response1.pageToken, response2.pageToken);
      expect(response1.groups?.length, response2.groups?.length);
    });
  });
  group('MembershipStatus', () {
    test('Accepted has expected status', () {
      expect(MembershipStatus.accepted.isAccepted, isTrue);
      expect(MembershipStatus.accepted.isCurrent, isTrue);
      expect(MembershipStatus.accepted.hasReplied, isTrue);
    });
    test('Pending has expected status', () {
      expect(MembershipStatus.pending.isAccepted, isFalse);
      expect(MembershipStatus.pending.isCurrent, isTrue);
      expect(MembershipStatus.pending.hasReplied, isFalse);
    });
    test('Declined has expected status', () {
      expect(MembershipStatus.declined.isAccepted, isFalse);
      expect(MembershipStatus.declined.isCurrent, isFalse);
      expect(MembershipStatus.declined.hasReplied, isTrue);
    });
    test('Removed has expected status', () {
      expect(MembershipStatus.removed.isAccepted, isFalse);
      expect(MembershipStatus.removed.isCurrent, isFalse);
      expect(MembershipStatus.removed.hasReplied, isTrue);
    });
  });
}

void expectExhaustiveCompareEquals(
    XShareGroupMember member1, XShareGroupMember member2) {
  expect(member1.invitationId, member2.invitationId);
  expect(member1.groupId, member2.groupId);
  expect(member1.inviteAccepted, member2.inviteAccepted);
  expect(member1.invitedByEmail, member2.invitedByEmail);
  expect(member1.invitedById, member2.invitedById);
  expect(member1.invitedByName, member2.invitedByName);
  expect(member1.invitedOn, member2.invitedOn);
  expect(member1.memberEmail, member2.memberEmail);
  expect(member1.memberId, member2.memberId);
  expect(member1.memberName, member2.memberName);
}
