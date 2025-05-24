// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CommentImpl _$$CommentImplFromJson(Map<String, dynamic> json) =>
    _$CommentImpl(
      ph_no: json['ph_no'] as String,
      description: json['description'] as String,
    );

Map<String, dynamic> _$$CommentImplToJson(_$CommentImpl instance) =>
    <String, dynamic>{
      'ph_no': instance.ph_no,
      'description': instance.description,
    };

_$RepositoryImpl _$$RepositoryImplFromJson(Map<String, dynamic> json) =>
    _$RepositoryImpl(
      templateImageUrl: json['templateImageUrl'] as String,
      repositoryTitle: json['repositoryTitle'] as String,
      writtenLangs: (json['writtenLangs'] as List<dynamic>)
          .map((e) => e as String)
          .toList(),
      platforms:
          (json['platforms'] as List<dynamic>).map((e) => e as String).toList(),
      appUrlType: $enumDecode(_$TypeOfUrlEnumMap, json['appUrlType']),
      appUrl: json['appUrl'] as String,
    );

Map<String, dynamic> _$$RepositoryImplToJson(_$RepositoryImpl instance) =>
    <String, dynamic>{
      'templateImageUrl': instance.templateImageUrl,
      'repositoryTitle': instance.repositoryTitle,
      'writtenLangs': instance.writtenLangs,
      'platforms': instance.platforms,
      'appUrlType': _$TypeOfUrlEnumMap[instance.appUrlType]!,
      'appUrl': instance.appUrl,
    };

const _$TypeOfUrlEnumMap = {
  TypeOfUrl.View: 'view',
  TypeOfUrl.Download: 'download',
  TypeOfUrl.Progress: 'progress',
};
