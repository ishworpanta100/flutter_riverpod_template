import 'dart:async';

import 'package:dio/dio.dart';

import '../../../common/services/common_api_service.dart';
import '../../../common/services/shared_pref_services.dart';
import '../../../exceptions/data_exception.dart';
import '../article_barrel.dart';

abstract class IArticleRepository {
  Future<ArticleBaseModel> getArticleData();
  Future<ArticleBaseModel> getArticlePaginatedData({int? offset, int? limit});
}

class ArticleRepository implements IArticleRepository {
  const ArticleRepository({
    required this.preference,
    required this.apiService,
  }) : super();

  final SharedPreferencesService preference;

  final ApiService apiService;

  @override
  Future<ArticleBaseModel> getArticleData() async {
    try {
      final response = await apiService.getArticleData(
          // authToken: preference.userAuthToken,
          );
      return response;
    } on DioError catch (dioError) {
      throw ApiDataException.fromDioError(dioError);
    }
  }

  @override
  Future<ArticleBaseModel> getArticlePaginatedData({int? offset, int? limit}) async {
    try {
      final response = await apiService.getArticlePaginatedData(
        // authToken: preference.userAuthToken,
        offset: offset,
        limit: limit,
      );
      return response;
    } on DioError catch (dioError) {
      throw ApiDataException.fromDioError(dioError);
    }
  }
}
