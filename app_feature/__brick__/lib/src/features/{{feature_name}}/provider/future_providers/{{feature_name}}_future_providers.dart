import 'dart:async';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/services/common_api_service.dart';
import '../../../../common/services/shared_pref_services.dart';
import '../../data/{{feature_name}}_repository.dart';
import '../../domain/{{feature_name}}_models.dart';
import '../{{feature_name}}_providers.dart';

part '{{feature_name}}_future_providers.g.dart';


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
Future<{{feature_name.pascalCase()}}BaseModel> {{feature_name.camelCase()}}Data({{feature_name.pascalCase()}}DataRef ref) async {
  final {{feature_name.camelCase()}}Repository = ref.watch({{feature_name.camelCase()}}RepoProvider);
  ref.cacheFor(const Duration(minutes: 1));
  return {{feature_name.camelCase()}}Repository.get{{feature_name.pascalCase()}}Data();
}

@riverpod
Future<{{feature_name.pascalCase()}}BaseModel> {{feature_name.camelCase()}}PaginatedData(
    {{feature_name.pascalCase()}}PaginatedDataRef ref,
    {int? offset = 0,
    int? limit = 10}) async {
  final {{feature_name.camelCase()}}Repository = ref.watch({{feature_name.camelCase()}}RepoProvider);
  final cancelToken = CancelToken();
  ref.onDispose(cancelToken.cancel);
  await Future<void>.delayed(const Duration(milliseconds: 250));
  if (cancelToken.isCancelled) throw Exception('Request cancelled');
  return {{feature_name.camelCase()}}Repository.get{{feature_name.pascalCase()}}PaginatedData(
      offset: offset, limit: limit);
}
