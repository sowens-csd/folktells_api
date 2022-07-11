import 'package:folktells_api/folktells_api.dart';
import 'package:json_annotation/json_annotation.dart';

part 'shared_share_group.g.dart';

class ShareGroupId extends StringId {
  const ShareGroupId(String id) : super(id);
}

@JsonSerializable()
class SharedShareGroup {
  final String id;
  final String name;
  final String ownerId;
  final String invitationId;
  SharedShareGroup(this.id, this.name, this.ownerId, this.invitationId);
  // SharedShareGroup.fromShareGroup(ShareGroup shareGroup)
  //     : id = shareGroup.groupId.asString(),
  //       name = shareGroup.groupName,
  //       ownerId = shareGroup.ownerId.asString(),
  //       invitationId = shareGroup.invitationId;

  factory SharedShareGroup.fromJson(Map<String, dynamic> json) =>
      _$SharedShareGroupFromJson(json);
  Map<String, dynamic> toJson() => _$SharedShareGroupToJson(this);
}
