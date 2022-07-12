import 'package:folktells_api/folktells_api.dart';

import 'test_online_user_data.dart';

class TestShareGroupData {
  static const int localUpdateAt1 = 2034234;
  static const invitationId1 = "aklfjds03284";
  static const groupName1 = "group1";
  static const groupName2 = "group2";
  static const groupId1 = ShareGroupId("groupId1");
  static const groupId2 = ShareGroupId("groupId2");
}

class TestSharedShareGroupData {
  static final SharedShareGroup sharedGroup1 = SharedShareGroup(
      TestShareGroupData.groupId1.asString(),
      TestShareGroupData.groupName1,
      TestOnlineUserData.userId1.asString(),
      TestShareGroupData.invitationId1);
}

class TestGroupMemberData {
  static const invitationId1 = "invitation1";
  static const invitationId2 = "invitation2";
  static const group2Member1InvitationId = "saoireu9queo943";
  static const version1 = "version1";
  static const version2 = "version2";
  static const version3 = "version3";
  static const customMsg1 = "Custom msg 1";
  static const int invitedOn1 = 2803;
  static const int localUpdateAt1 = 4932842830;
  static const int lastUpdated1 = 4932842835;
  static XShareGroupMember member1 = XShareGroupMember(
    invitationId1,
    TestShareGroupData.groupId1.asString(),
    TestOnlineUserData.userId1.asString(),
    TestOnlineUserData.email1,
    TestOnlineUserData.name1,
    TestOnlineUserData.userId2.asString(),
    TestOnlineUserData.name2,
    TestOnlineUserData.email2,
    invitedOn1,
    MembershipStatus.acceptedStatus,
    version1,
    version1,
    lastUpdated1,
    TestOnlineUserData.userId1.asString(),
    TestShareGroupData.groupName1,
    TestGroupMemberData.customMsg1,
  );
  static XShareGroupMember group2Member1 = XShareGroupMember(
    group2Member1InvitationId,
    TestShareGroupData.groupId2.asString(),
    TestOnlineUserData.userId1.asString(),
    TestOnlineUserData.email1,
    TestOnlineUserData.name1,
    TestOnlineUserData.userId2.asString(),
    TestOnlineUserData.name2,
    TestOnlineUserData.email2,
    invitedOn1,
    MembershipStatus.acceptedStatus,
    version1,
    version1,
    lastUpdated1,
    TestOnlineUserData.userId1.asString(),
    TestShareGroupData.groupName2,
    TestGroupMemberData.customMsg1,
  );
  static XShareGroupMember conflictingMember1 = XShareGroupMember(
    invitationId1,
    TestShareGroupData.groupId1.asString(),
    TestOnlineUserData.userId1.asString(),
    TestOnlineUserData.email1,
    TestOnlineUserData.name1,
    TestOnlineUserData.userId2.asString(),
    TestOnlineUserData.name2,
    TestOnlineUserData.email2,
    invitedOn1,
    MembershipStatus.acceptedStatus,
    version3,
    version2,
    lastUpdated1,
    TestOnlineUserData.userId1.asString(),
    TestShareGroupData.groupName1,
    TestGroupMemberData.customMsg1,
  );
  static XShareGroupMember member2 = XShareGroupMember(
    invitationId2,
    TestShareGroupData.groupId1.asString(),
    TestOnlineUserData.userId2.asString(),
    TestOnlineUserData.email2,
    TestOnlineUserData.name2,
    TestOnlineUserData.userId2.asString(),
    TestOnlineUserData.name2,
    TestOnlineUserData.email2,
    invitedOn1,
    MembershipStatus.acceptedStatus,
    version1,
    "",
    lastUpdated1,
    TestOnlineUserData.userId1.asString(),
    TestShareGroupData.groupName1,
    TestGroupMemberData.customMsg1,
  );
  static XShareGroupMember declinedMember = XShareGroupMember(
    invitationId1,
    TestShareGroupData.groupId1.asString(),
    TestOnlineUserData.userId1.asString(),
    TestOnlineUserData.email1,
    TestOnlineUserData.name1,
    TestOnlineUserData.userId2.asString(),
    TestOnlineUserData.name2,
    TestOnlineUserData.email2,
    invitedOn1,
    MembershipStatus.declinedStatus,
    version1,
    "",
    lastUpdated1,
    TestOnlineUserData.userId1.asString(),
    TestShareGroupData.groupName1,
    TestGroupMemberData.customMsg1,
  );
  static XShareGroupMember removedMember = XShareGroupMember(
    invitationId1,
    TestShareGroupData.groupId1.asString(),
    TestOnlineUserData.userId1.asString(),
    TestOnlineUserData.email1,
    TestOnlineUserData.name1,
    TestOnlineUserData.userId2.asString(),
    TestOnlineUserData.name2,
    TestOnlineUserData.email2,
    invitedOn1,
    MembershipStatus.removedStatus,
    version1,
    "",
    lastUpdated1,
    TestOnlineUserData.userId1.asString(),
    TestShareGroupData.groupName1,
    TestGroupMemberData.customMsg1,
  );
  static XShareGroupMember pendingMember = XShareGroupMember(
    invitationId1,
    TestShareGroupData.groupId1.asString(),
    TestOnlineUserData.userId1.asString(),
    TestOnlineUserData.email1,
    TestOnlineUserData.name1,
    TestOnlineUserData.userId2.asString(),
    TestOnlineUserData.name2,
    TestOnlineUserData.email2,
    invitedOn1,
    MembershipStatus.pendingStatus,
    version1,
    "",
    lastUpdated1,
    TestOnlineUserData.userId1.asString(),
    TestShareGroupData.groupName1,
    TestGroupMemberData.customMsg1,
  );
  static XShareGroupMember newOwnerMember = XShareGroupMember(
    invitationId1,
    TestShareGroupData.groupId1.asString(),
    TestOnlineUserData.userId1.asString(),
    TestOnlineUserData.email3,
    TestOnlineUserData.upperName1,
    TestOnlineUserData.userId1.asString(),
    "",
    "",
    invitedOn1,
    MembershipStatus.acceptedStatus,
    "",
    "",
    lastUpdated1,
    TestOnlineUserData.userId1.asString(),
    TestShareGroupData.groupName1,
    "",
  );
  static XShareGroupMember noMessageMember = XShareGroupMember(
    invitationId1,
    TestShareGroupData.groupId1.asString(),
    TestOnlineUserData.userId1.asString(),
    "",
    "",
    TestOnlineUserData.userId1.asString(),
    "",
    "",
    invitedOn1,
    MembershipStatus.acceptedStatus,
    "",
    "",
    lastUpdated1,
    TestOnlineUserData.userId1.asString(),
    TestShareGroupData.groupName1,
    '',
  );
  static XShareGroupMember noNameMember = XShareGroupMember(
    invitationId1,
    TestShareGroupData.groupId1.asString(),
    TestOnlineUserData.userId1.asString(),
    TestOnlineUserData.email1,
    "",
    TestOnlineUserData.userId1.asString(),
    "",
    "",
    invitedOn1,
    MembershipStatus.acceptedStatus,
    "",
    "",
    lastUpdated1,
    TestOnlineUserData.userId1.asString(),
    TestShareGroupData.groupName1,
    '',
  );
  static XShareGroupMember noEmailMember = XShareGroupMember(
    invitationId1,
    TestShareGroupData.groupId1.asString(),
    TestOnlineUserData.userId1.asString(),
    '',
    "",
    TestOnlineUserData.userId1.asString(),
    "",
    "",
    invitedOn1,
    MembershipStatus.acceptedStatus,
    "",
    "",
    lastUpdated1,
    TestOnlineUserData.userId1.asString(),
    TestShareGroupData.groupName1,
    '',
  );
}
