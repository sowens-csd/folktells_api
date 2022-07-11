import 'package:json_annotation/json_annotation.dart';

part 'online_user_response.g.dart';

@JsonSerializable(explicitToJson: true)
class OnlineUserResponse {
  final String id;
  final String name;
  final String? email;
  final String? managedUsername;
  final String inviteAccepted;
  final bool? emailOptOut;
  final String? sharingProductId;
  final int? sharingExpiry;
  final bool? autoRenew;
  final int? gracePeriod;
  final String? phone;
  final String? callChannel;
  final String? callPeerId;

  OnlineUserResponse(
      this.id,
      this.email,
      this.managedUsername,
      this.name,
      this.inviteAccepted,
      this.emailOptOut,
      this.sharingProductId,
      this.sharingExpiry,
      this.autoRenew,
      this.gracePeriod,
      this.phone,
      this.callChannel,
      this.callPeerId);
  factory OnlineUserResponse.fromJson(Map<String, dynamic> json) =>
      _$OnlineUserResponseFromJson(json);
  Map<String, dynamic> toJson() => _$OnlineUserResponseToJson(this);
}
