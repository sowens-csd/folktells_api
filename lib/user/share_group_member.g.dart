// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_group_member.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

XShareGroupMember _$ShareGroupMemberFromJson(Map<String, dynamic> json) =>
    XShareGroupMember(
      json['invitationId'] as String,
      json['groupId'] as String,
      json['memberId'] as String,
      json['memberEmail'] as String,
      json['memberName'] as String?,
      json['invitedById'] as String,
      json['invitedByName'] as String?,
      json['invitedByEmail'] as String,
      json['invitedOn'] as int,
      json['inviteAccepted'] as String,
      json['version'],
      json['baseVersion'],
      json['lastUpdated'] as int,
      json['lastUpdatedBy'] as String,
      json['groupName'] as String?,
      json['customMsg'] as String?,
    );

Map<String, dynamic> _$ShareGroupMemberToJson(XShareGroupMember instance) {
  final val = <String, dynamic>{
    'version': instance.version,
    'baseVersion': instance.baseVersion,
    'invitationId': instance.invitationId,
    'groupId': instance.groupId,
    'memberId': instance.memberId,
    'memberEmail': instance.memberEmail,
    'memberName': instance.memberName,
    'invitedById': instance.invitedById,
    'invitedByName': instance.invitedByName,
    'invitedByEmail': instance.invitedByEmail,
    'invitedOn': instance.invitedOn,
    'inviteAccepted': instance.inviteAccepted,
    'lastUpdatedBy': instance.lastUpdatedBy,
    'lastUpdated': instance.lastUpdated,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('groupName', instance.groupName);
  writeNotNull('customMsg', instance.customMsg);
  return val;
}

ShareGroupMembers _$ShareGroupMembersFromJson(Map<String, dynamic> json) =>
    ShareGroupMembers(
      SharedShareGroup.fromJson(json['group'] as Map<String, dynamic>),
      (json['members'] as List<dynamic>)
          .map((e) => XShareGroupMember.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShareGroupMembersToJson(ShareGroupMembers instance) =>
    <String, dynamic>{
      'group': instance.group.toJson(),
      'members': instance.members.map((e) => e.toJson()).toList(),
    };

ShareGroupMembersResponse _$ShareGroupMembersResponseFromJson(
        Map<String, dynamic> json) =>
    ShareGroupMembersResponse(
      json['pageToken'] as String?,
      (json['groups'] as List<dynamic>?)
          ?.map((e) => ShareGroupMembers.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ShareGroupMembersResponseToJson(
        ShareGroupMembersResponse instance) =>
    <String, dynamic>{
      'pageToken': instance.pageToken,
      'groups': instance.groups?.map((e) => e.toJson()).toList(),
    };
