import '../../features/{{feature_name}}/{{feature_name}}_barrel.dart';

  /// {{feature_name.camelCase()}} Feature API

  @GET(ApiUrl.{{feature_name.camelCase()}})
  Future<{{feature_name.pascalCase()}}BaseModel> get{{feature_name.pascalCase()}}Data();
  
  @GET(ApiUrl.{{feature_name.camelCase()}})
  Future<{{feature_name.pascalCase()}}BaseModel> get{{feature_name.pascalCase()}}PaginatedData({
    @Query(ApiQuery.offset) int? offset,
    @Query(ApiQuery.limit) int? limit,
  });

