import 'dart:async';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../common/services/common_api_service.dart';
import '../../../common/services/shared_pref_services.dart';
import '../data/article_repository.dart';
import '../domain/article_model.dart';

part 'article_provider.g.dart';

extension on AutoDisposeRef {
  void cacheFor(Duration duration) {
    final keepAliveLink = keepAlive();
    Timer(duration, () {
      keepAliveLink.close();
    });
  }
}

extension on AutoDisposeRef {
  void cancelRequest({Duration? duration}) async {
    // Cancel the page request if the UI no longer needs it before the request is finished.
    // This typically happen if the user scrolls very fast
    final cancelToken = CancelToken();
    onDispose(cancelToken.cancel);
    // Debouncing the request. By having this delay, it leaves the opportunity
    // for consumers to subscribe to a different  parameters. In which
    // case, this request will be aborted.
    await Future<void>.delayed(duration ?? const Duration(milliseconds: 250));
    if (cancelToken.isCancelled) throw Exception('Request cancelled');
  }
}



@riverpod
ArticleRepository articleRepo(ArticleRepoRef ref) {
  final preference = ref.read(sharedPreferencesServiceProvider);
  final apiService = ref.read(apiServiceProvider);
  return ArticleRepository(apiService: apiService, preference: preference);
}

@riverpod
Future<ArticleBaseModel> articleData(ArticleDataRef ref) async {
  final articleRepository = ref.watch(articleRepoProvider);
  ref.cacheFor(const Duration(minutes: 1));
  return articleRepository.getArticleData();
}

@riverpod
Future<ArticleBaseModel> articlePaginatedData(ArticlePaginatedDataRef ref, {int? offset = 0, int? limit = 10}) async {
  final articleRepository = ref.watch(articleRepoProvider);
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);
  await Future<void>.delayed(const Duration(milliseconds: 250));
  if (cancelToken.isCancelled) throw Exception('Request cancelled');
  return articleRepository.getArticlePaginatedData(offset: offset, limit: limit);
}
