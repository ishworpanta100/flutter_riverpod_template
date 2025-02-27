import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_model.freezed.dart';
part 'article_model.g.dart';

@freezed
class ArticleBaseModel with _$ArticleBaseModel {
  @JsonSerializable(
    // fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory ArticleBaseModel({
    @Default([]) List<ArticleModel> artilces,
    @Default(0) int articlesCount,
  }) = _ArticleBaseModel;

  factory ArticleBaseModel.fromJson(Map<String, dynamic> json) => _$ArticleBaseModelFromJson(json);
}

@freezed
class ArticleModel with _$ArticleModel {
  @JsonSerializable(
    // fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory ArticleModel({
    @Default('') String title,
    @Default('') String description,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) => _$ArticleModelFromJson(json);
}
