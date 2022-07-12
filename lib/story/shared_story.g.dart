// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'shared_story.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

StoryGroupShare _$StoryGroupShareFromJson(Map<String, dynamic> json) =>
    StoryGroupShare(
      json['storyId'] as String,
      json['groupId'] as String,
      json['version'] as String,
      json['baseVersion'] as String,
      json['lastUpdated'] as int,
      json['lastUpdatedBy'] as String,
      json['status'] as String,
    );

Map<String, dynamic> _$StoryGroupShareToJson(StoryGroupShare instance) =>
    <String, dynamic>{
      'storyId': instance.storyId,
      'groupId': instance.groupId,
      'version': instance.version,
      'baseVersion': instance.baseVersion,
      'lastUpdatedBy': instance.lastUpdatedBy,
      'lastUpdated': instance.lastUpdated,
      'status': instance.status,
    };

SharedStory _$SharedStoryFromJson(Map<String, dynamic> json) => SharedStory(
      json['id'] as String,
      json['albumReference'] as String,
      json['title'] as String?,
      json['content'] as String?,
      json['version'] as String,
      json['baseVersion'] as String,
      json['lastUpdatedBy'] as String,
      json['lastUpdated'] as int,
      json['storySource'] as String,
      (json['groups'] as List<dynamic>)
          .map((e) => StoryGroupShare.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SharedStoryToJson(SharedStory instance) =>
    <String, dynamic>{
      'id': instance.id,
      'albumReference': instance.albumReference,
      'title': instance.title,
      'content': instance.content,
      'version': instance.version,
      'baseVersion': instance.baseVersion,
      'lastUpdated': instance.lastUpdated,
      'lastUpdatedBy': instance.lastUpdatedBy,
      'storySource': instance.storySource,
      'groups': instance.groups.map((e) => e.toJson()).toList(),
    };

SharedStories _$SharedStoriesFromJson(Map<String, dynamic> json) =>
    SharedStories(
      json['nextPageToken'] as String?,
      (json['stories'] as List<dynamic>?)
          ?.map((e) => SharedStory.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SharedStoriesToJson(SharedStories instance) =>
    <String, dynamic>{
      'nextPageToken': instance.nextPageToken,
      'stories': instance.stories?.map((e) => e.toJson()).toList(),
    };

StoryUpdateResult _$StoryUpdateResultFromJson(Map<String, dynamic> json) =>
    StoryUpdateResult(
      json['success'] as bool?,
      json['status'] as int?,
      json['duplicateStoryId'] as String?,
    );

Map<String, dynamic> _$StoryUpdateResultToJson(StoryUpdateResult instance) =>
    <String, dynamic>{
      'success': instance.success,
      'status': instance.status,
      'duplicateStoryId': instance.duplicateStoryId,
    };
