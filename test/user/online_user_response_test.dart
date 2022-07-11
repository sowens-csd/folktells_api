import 'package:flutter_test/flutter_test.dart';
import 'package:folktells_api/user/online_user_response.dart';

import 'test_online_user_data.dart';

void main() {
  test('OnlineUserResponse roundtrips', () {
    OnlineUserResponse response1 = OnlineUserResponse(
        TestOnlineUserData.userId1.asString(),
        TestOnlineUserData.email1,
        '',
        TestOnlineUserData.name1,
        'y',
        false,
        TestOnlineUserData.sharingProductId1,
        TestOnlineUserData.sharingExpiry1,
        true,
        TestOnlineUserData.sharingExpiry1,
        '',
        TestOnlineUserData.emptyCallChannel,
        TestOnlineUserData.emptyCallPeeriId);
    var json = response1.toJson();
    OnlineUserResponse roundtrip = OnlineUserResponse.fromJson(json);
    expect(response1.id, roundtrip.id);
    expect(response1.name, roundtrip.name);
    expect(response1.email, roundtrip.email);
    expect(roundtrip.email, TestOnlineUserData.email1);
    expect(roundtrip.id, TestOnlineUserData.userId1.asString());
    expect(roundtrip.name, TestOnlineUserData.name1);
  });
}
