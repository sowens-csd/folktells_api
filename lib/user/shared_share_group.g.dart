// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_share_group.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SharedShareGroup _$SharedShareGroupFromJson(Map<String, dynamic> json) =>
    SharedShareGroup(
      json['id'] as String,
      json['name'] as String,
      json['ownerId'] as String,
      json['invitationId'] as String,
    );

Map<String, dynamic> _$SharedShareGroupToJson(SharedShareGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'ownerId': instance.ownerId,
      'invitationId': instance.invitationId,
    };
