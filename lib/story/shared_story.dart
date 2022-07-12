import 'package:flutter/material.dart';
import 'package:json_annotation/json_annotation.dart';
part 'shared_story.g.dart';

@JsonSerializable(explicitToJson: true)
class StoryGroupShare {
  final String storyId;
  final String groupId;
  final String version;
  final String baseVersion;
  final String lastUpdatedBy;
  final int lastUpdated;
  final String status;

  StoryGroupShare(this.storyId, this.groupId, this.version, this.baseVersion,
      this.lastUpdated, this.lastUpdatedBy, this.status);

  factory StoryGroupShare.fromJson(Map<String, dynamic> json) =>
      _$StoryGroupShareFromJson(json);
  Map<String, dynamic> toJson() => _$StoryGroupShareToJson(this);

  @override
  bool operator ==(dynamic other) {
    if (other.runtimeType != runtimeType) return false;
    final StoryGroupShare typedOther = other;
    return groupId == typedOther.groupId && storyId == typedOther.storyId;
  }

  @override
  int get hashCode => hashValues(groupId, storyId);

  @override
  String toString() => '$runtimeType($groupId, $storyId)';
}

@JsonSerializable(explicitToJson: true)
class SharedStory {
  String id;
  String albumReference;
  String? title;
  String? content;
  String version;
  String baseVersion;
  int lastUpdated;
  String lastUpdatedBy;
  String storySource;
  List<StoryGroupShare> groups;

  SharedStory(
      this.id,
      this.albumReference,
      this.title,
      this.content,
      this.version,
      this.baseVersion,
      this.lastUpdatedBy,
      this.lastUpdated,
      this.storySource,
      this.groups);

  factory SharedStory.fromJson(Map<String, dynamic> json) =>
      _$SharedStoryFromJson(json);
  Map<String, dynamic> toJson() => _$SharedStoryToJson(this);
}

@JsonSerializable(explicitToJson: true)
class SharedStories {
  String? nextPageToken;
  List<SharedStory>? stories;

  SharedStories(this.nextPageToken, this.stories);

  factory SharedStories.fromJson(Map<String, dynamic> json) =>
      _$SharedStoriesFromJson(json);
  Map<String, dynamic> toJson() => _$SharedStoriesToJson(this);
}

/// This is returned by the new / update story server endpoint.
@JsonSerializable()
class StoryUpdateResult {
  final bool? success;
  final int? status;
  final String? duplicateStoryId;

  StoryUpdateResult(this.success, this.status, this.duplicateStoryId);

  bool get isDuplicate =>
      !(success ?? true) && (duplicateStoryId?.isNotEmpty ?? false);

  factory StoryUpdateResult.fromJson(Map<String, dynamic> json) =>
      _$StoryUpdateResultFromJson(json);
  Map<String, dynamic> toJson() => _$StoryUpdateResultToJson(this);
}
