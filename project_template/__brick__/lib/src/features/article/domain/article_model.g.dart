// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ArticleBaseModel _$$_ArticleBaseModelFromJson(Map<String, dynamic> json) =>
    _$_ArticleBaseModel(
      artilces: (json['artilces'] as List<dynamic>?)
              ?.map((e) => ArticleModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      articlesCount: json['articlesCount'] as int? ?? 0,
    );

Map<String, dynamic> _$$_ArticleBaseModelToJson(_$_ArticleBaseModel instance) =>
    <String, dynamic>{
      'artilces': instance.artilces.map((e) => e.toJson()).toList(),
      'articlesCount': instance.articlesCount,
    };

_$_ArticleModel _$$_ArticleModelFromJson(Map<String, dynamic> json) =>
    _$_ArticleModel(
      title: json['title'] as String? ?? '',
      description: json['description'] as String? ?? '',
    );

Map<String, dynamic> _$$_ArticleModelToJson(_$_ArticleModel instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
    };
