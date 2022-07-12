import 'package:json_annotation/json_annotation.dart';

/// Holds the version information required to detect conflicts between local
/// and remote copies of the same information.
@JsonSerializable()
class VersionedItem {
  static const String versionColumn = "version";
  static const String baseVersionColumn = "base_version";

  VersionedItem(this.version, this.baseVersion);

  final String version;
  final String baseVersion;

  bool get isUnchanged => baseVersion == version;

  /// true if there has been a local change to the story, whenever a story is
  /// changed its version number is updated so any local change would make the
  /// version != baseVersion
  bool get isChanged => baseVersion != version;

  bool matchesVersion(String otherVersion) {
    return version == otherVersion;
  }

  /// returns true if both the version and baseVersion are the same
  bool isSameVersionAs(String version, String baseVersion) {
    return this.version == version && this.baseVersion == baseVersion;
  }
}
