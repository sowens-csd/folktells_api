import 'package:folktells_api/folktells_api.dart';

class TestOnlineUserData {
  static const int localUpdateAt1 = 122812830;
  static const String name1 = "name1";
  static const String name2 = "name2";
  static const String name3 = "name3";
  static const String name4 = "name4";
  static const String upperName1 = "UpperName1";
  static const String subscribedName1 = "subscribed1";
  static const String neverSubscribedName = "neverSubscribed";
  static const String userWithGroupName = "userWithGroup";
  static const String email1 = "email1@example.com";
  static const String email2 = "email2@example.com";
  static const String email3 = "email3@example.com";
  static const String email4 = "email4@example.com";
  static const String subscribedEmail1 = "subscribed1@example.com";
  static const String neverSubscribedEmail = "neversubscribed@example.com";
  static const String sharingProductId1 = 'sharingProduct1';
  static const String sharingProductId2 = 'sharingProduct2';
  static const int sharingExpiry1 = 1588713795792;
  static const int sharingExpiry2 = 1588900000000;
  static const int subscribedSharingExpiry1 = 4133912400000;
  static const int subscribedSharingExpired1 = 1;
  static const int subscribedSharingNotExpired =
      2240542800000; // Okay, so it expires in 2040
  static const String userWithGroupEmail = "group.email1@example.com";
  static OnlineUserId userId1 = OnlineUserId("userId1");
  static OnlineUserId userId2 = OnlineUserId("userId2");
  static OnlineUserId userId3 = OnlineUserId("userId3");
  static OnlineUserId userId4 = OnlineUserId("userId4");
  static OnlineUserId subscribedUserId1 = OnlineUserId("subscribedUserId1");
  static OnlineUserId neverSubscribedUserId = OnlineUserId("neverSubscribed");
  static OnlineUserId userWithGroupId = OnlineUserId("userWithGroup1");
  static const String phone1 = "55512345678";
  static const String phone2 = "55512345679";
  static const String phone3 = "55512345670";
  static const String subscribedPhone1 = "55512345680";
  static const String emptyPhone = "";
  static const String emptyCallChannel = "";
  static const String callChannel1 = "callChannel1";
  static const String emptyCallPeeriId = "";
}
