import 'dart:async';

import 'package:dio/dio.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../../../common/services/common_api_service.dart';
import '../../../../common/services/shared_pref_services.dart';
import '../../data/{{feature_name}}_repository.dart';
import '../../domain/{{feature_name}}_model.dart';

part '{{feature_name}}_class_providers.g.dart';

@Riverpod(keepAlive: true)
{{feature_name.pascalCase()}}Repository {{feature_name.camelCase()}}Repo({{feature_name.pascalCase()}}RepoRef ref) {
  final preference = ref.read(sharedPreferencesServiceProvider);
  final apiService = ref.read(apiServiceProvider);
  return {{feature_name.pascalCase()}}Repository(apiService: apiService, preference: preference);
}