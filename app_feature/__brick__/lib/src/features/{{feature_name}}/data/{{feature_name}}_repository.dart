import 'dart:async';

import 'package:dio/dio.dart';

import '../../../common/services/common_api_service.dart';
import '../../../common/services/shared_pref_services.dart';
import '../../../exceptions/data_exception.dart';
import '../{{feature_name.snakeCase()}}_barrel.dart';

abstract class I{{feature_name.pascalCase()}}Repository {
  Future<{{feature_name.pascalCase()}}BaseModel> get{{feature_name.pascalCase()}}Data();
  Future<{{feature_name.pascalCase()}}BaseModel> get{{feature_name.pascalCase()}}PaginatedData({int? offset, int? limit});
}

class {{feature_name.pascalCase()}}Repository implements I{{feature_name.pascalCase()}}Repository {
  const {{feature_name.pascalCase()}}Repository({
    required this.preference,
    required this.apiService,
  }) : super();

  final SharedPreferencesService preference;

  final ApiService apiService;

  @override
  Future<{{feature_name.pascalCase()}}BaseModel> get{{feature_name.pascalCase()}}Data() async {
    try {
      final response = await apiService.get{{feature_name.pascalCase()}}Data(
          // authToken: preference.userAuthToken,
          );
      return response;
    } on DioException catch (dioError) {
      throw ApiDataException.fromDioError(dioError);
    }
  }

  @override
  Future<{{feature_name.pascalCase()}}BaseModel> get{{feature_name.pascalCase()}}PaginatedData({int? offset, int? limit}) async {
    try {
      final response = await apiService.get{{feature_name.pascalCase()}}PaginatedData(
        // authToken: preference.userAuthToken,
        offset: offset,
        limit: limit,
      );
      return response;
    } on DioException catch (dioError) {
      throw ApiDataException.fromDioError(dioError);
    }
  }

  /// TODO: move to common service file
  ///
  // @GET(ApiUrl.get{{feature_name.pascalCase()}}Data)
  // Future<{{feature_name.pascalCase()}}BaseModel> get{{feature_name.pascalCase()}}Data();
  //
  //  @GET(ApiUrl.get{{feature_name.pascalCase()}}Data)
  // Future<{{feature_name.pascalCase()}}BaseModel> get{{feature_name.pascalCase()}}PaginatedData({
  //   @Query(ApiQuery.offset) int? offset,
  //   @Query(ApiQuery.limit) int? limit,
  // });
}
