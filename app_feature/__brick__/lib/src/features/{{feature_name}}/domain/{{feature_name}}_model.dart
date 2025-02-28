import 'package:freezed_annotation/freezed_annotation.dart';

part '{{feature_name}}_model.freezed.dart';
part '{{feature_name}}_model.g.dart';

@freezed
class {{feature_name.pascalCase()}}BaseModel with _${{feature_name.pascalCase()}}BaseModel {
  @JsonSerializable(
    // fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory {{feature_name.pascalCase()}}BaseModel({
    @Default([]) List<{{feature_name.pascalCase()}}Model> {{api_base_key}},
    @Default(0) int {{api_count_key}},
  }) = _{{feature_name.pascalCase()}}BaseModel;

  factory {{feature_name.pascalCase()}}BaseModel.fromJson(Map<String, dynamic> json) => _${{feature_name.pascalCase()}}BaseModelFromJson(json);
}

@freezed
class {{feature_name.pascalCase()}}Model with _${{feature_name.pascalCase()}}Model {
  @JsonSerializable(
    // fieldRename: FieldRename.snake,
    explicitToJson: true,
  )
  const factory {{feature_name.pascalCase()}}Model({
    @Default('') String {{api_sub_key_one}},
    @Default('') String {{api_sub_key_two}},
  }) = _{{feature_name.pascalCase()}}Model;

  factory {{feature_name.pascalCase()}}Model.fromJson(Map<String, dynamic> json) => _${{feature_name.pascalCase()}}ModelFromJson(json);
}
