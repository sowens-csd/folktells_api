import 'package:folktells_api/folktells_api.dart';
import 'package:folktells_api/util/versioned_item.dart';
import 'package:json_annotation/json_annotation.dart';

part 'share_group_member.g.dart';

class MembershipStatus {
  static const String acceptedStatus = "y";
  static const String declinedStatus = "n";
  static const String pendingStatus = "p";
  static const String removedStatus = "r";

  final String status;

  const MembershipStatus._(this.status);

  bool get isAccepted => acceptedStatus == status;
  bool get isNotAccepted => !isAccepted;
  get hasReplied => status != pendingStatus;
  get hasNotReplied => !hasReplied;
  bool get isCurrent => status != removedStatus && status != declinedStatus;

  static const accepted = MembershipStatus._(acceptedStatus);
  static const declined = MembershipStatus._(declinedStatus);
  static const pending = MembershipStatus._(pendingStatus);
  static const removed = MembershipStatus._(removedStatus);
  static const Map<String, MembershipStatus> _stati = {
    acceptedStatus: accepted,
    declinedStatus: declined,
    pendingStatus: pending,
    removedStatus: removed
  };

  static fromString(String inviteAccepted) {
    if (_stati.containsKey(inviteAccepted)) {
      return _stati[inviteAccepted];
    }
    return pending;
  }
}

/// A member in a [ShareGroup].
@JsonSerializable()
class XShareGroupMember extends VersionedItem {
  final String invitationId;
  final String groupId;
  final String memberId;
  final String memberEmail;
  final String? memberName;
  final String invitedById;
  final String? invitedByName;
  final String invitedByEmail;
  final int invitedOn;
  final String inviteAccepted;
  final String lastUpdatedBy;
  final int lastUpdated;
  // These two fields are only used for new invitations
  @JsonKey(includeIfNull: false)
  final String? groupName;
  @JsonKey(includeIfNull: false)
  final String? customMsg;

  XShareGroupMember(
      this.invitationId,
      this.groupId,
      this.memberId,
      this.memberEmail,
      this.memberName,
      this.invitedById,
      this.invitedByName,
      this.invitedByEmail,
      this.invitedOn,
      this.inviteAccepted,
      version,
      baseVersion,
      this.lastUpdated,
      this.lastUpdatedBy,
      this.groupName,
      this.customMsg)
      : super(version, baseVersion);

  MembershipStatus get membershipStatus =>
      MembershipStatus.fromString(inviteAccepted);
  bool get isAccepted => membershipStatus.isAccepted;
  bool get isNotAccepted => membershipStatus.isNotAccepted;
  bool get hasReplied => membershipStatus.hasReplied;
  bool get hasNotReplied => membershipStatus.hasNotReplied;
  bool get isCurrent => membershipStatus.isCurrent;
  bool get hasMemberEmail => memberEmail.isNotEmpty;
  bool get hasMemberName => memberName?.isNotEmpty ?? false;

  String get displayName =>
      hasMemberName ? '$memberName <$memberEmail>' : memberEmail;

  @override
  String toString() {
    return "$runtimeType(iId=$invitationId, gId=$groupId, mId=$memberId, accepted=$inviteAccepted)";
  }

  factory XShareGroupMember.fromJson(Map<String, dynamic> json) =>
      _$ShareGroupMemberFromJson(json);
  Map<String, dynamic> toJson() => _$ShareGroupMemberToJson(this);

  /// returns true if the given user is the member referred to by this
  /// membership record, false otherwise.
  bool isTheMember(OnlineUserId userId) {
    return userId == OnlineUserId(memberId);
  }

  @override
  bool operator ==(dynamic other) {
    if (other.runtimeType != runtimeType) return false;
    final XShareGroupMember typedOther = other;
    return invitationId == typedOther.invitationId;
  }

  @override
  int get hashCode => invitationId.hashCode;
}

@JsonSerializable(explicitToJson: true)
class ShareGroupMembers {
  final SharedShareGroup group;
  final List<XShareGroupMember> members = [];

  ShareGroupMembers(this.group, final List<XShareGroupMember> members) {
    this.members.addAll(members);
  }

  factory ShareGroupMembers.fromJson(Map<String, dynamic> json) =>
      _$ShareGroupMembersFromJson(json);
  Map<String, dynamic> toJson() => _$ShareGroupMembersToJson(this);
}

@JsonSerializable(explicitToJson: true)
class ShareGroupMembersResponse {
  String? pageToken;
  List<ShareGroupMembers>? groups = [];

  ShareGroupMembersResponse(
      this.pageToken, final List<ShareGroupMembers>? groups) {
    this.groups?.addAll(groups ?? []);
  }

  factory ShareGroupMembersResponse.fromJson(Map<String, dynamic> json) =>
      _$ShareGroupMembersResponseFromJson(json);
  Map<String, dynamic> toJson() => _$ShareGroupMembersResponseToJson(this);
}
