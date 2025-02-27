import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:retrofit/http.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/article/article_barrel.dart';
import 'api_url.dart';

part 'common_api_service.g.dart';

@riverpod
ApiService apiService(ApiServiceRef ref) {
  return ApiService.create(ApiUrl.baseUrl);
}

@RestApi(baseUrl: ApiUrl.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  static ApiService create(String baseUrl) {
    final dio = Dio();
    dio.interceptors.add(PrettyDioLogger());
    dio.options.headers['content-Type'] = 'application/json';
    return ApiService(dio, baseUrl: baseUrl);
  }

  /// Authentication needed
  // @GET(ApiUrl.getArticleData)
  // Future<ArticleBaseModel> getArticleData({
  //   @Header(ApiHeader.authorization) String? authToken,
  //   // @Body() SomeModelRequestModel? someModelRequestModel, // For Post Body Request
  //   // @Query(ApiQuery.offset) int? offset, // For Query Parameter
  //   // @Query(ApiQuery.limit) int? limit, // For Query Parameter
  //   // @Path('id') String? id, // For Path Parameter
  // });

  @GET(ApiUrl.getArticleData)
  Future<ArticleBaseModel> getArticleData();

  @GET(ApiUrl.getArticleData)
  Future<ArticleBaseModel> getArticlePaginatedData({
    @Query(ApiQuery.offset) int? offset,
    @Query(ApiQuery.limit) int? limit,
  });
}
