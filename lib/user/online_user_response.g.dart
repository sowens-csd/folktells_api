// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'online_user_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

OnlineUserResponse _$OnlineUserResponseFromJson(Map<String, dynamic> json) =>
    OnlineUserResponse(
      json['id'] as String,
      json['email'] as String?,
      json['managedUsername'] as String?,
      json['name'] as String,
      json['inviteAccepted'] as String,
      json['emailOptOut'] as bool?,
      json['sharingProductId'] as String?,
      json['sharingExpiry'] as int?,
      json['autoRenew'] as bool?,
      json['gracePeriod'] as int?,
      json['phone'] as String?,
      json['callChannel'] as String?,
      json['callPeerId'] as String?,
    );

Map<String, dynamic> _$OnlineUserResponseToJson(OnlineUserResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'managedUsername': instance.managedUsername,
      'inviteAccepted': instance.inviteAccepted,
      'emailOptOut': instance.emailOptOut,
      'sharingProductId': instance.sharingProductId,
      'sharingExpiry': instance.sharingExpiry,
      'autoRenew': instance.autoRenew,
      'gracePeriod': instance.gracePeriod,
      'phone': instance.phone,
      'callChannel': instance.callChannel,
      'callPeerId': instance.callPeerId,
    };
