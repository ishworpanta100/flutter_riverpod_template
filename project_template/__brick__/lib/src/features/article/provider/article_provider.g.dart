// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$articleRepoHash() => r'0c36833f952eb8270484c610569a438304bb6958';

/// See also [articleRepo].
@ProviderFor(articleRepo)
final articleRepoProvider = AutoDisposeProvider<ArticleRepository>.internal(
  articleRepo,
  name: r'articleRepoProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$articleRepoHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ArticleRepoRef = AutoDisposeProviderRef<ArticleRepository>;
String _$articleDataHash() => r'b22b5f908922c8fd4a96e9a328407f64fbcdf959';

/// See also [articleData].
@ProviderFor(articleData)
final articleDataProvider =
    AutoDisposeFutureProvider<ArticleBaseModel>.internal(
  articleData,
  name: r'articleDataProvider',
  debugGetCreateSourceHash:
      const bool.fromEnvironment('dart.vm.product') ? null : _$articleDataHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef ArticleDataRef = AutoDisposeFutureProviderRef<ArticleBaseModel>;
String _$articlePaginatedDataHash() =>
    r'b3b6a1e0a174576bf83da76bebfff351ecb18799';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

typedef ArticlePaginatedDataRef
    = AutoDisposeFutureProviderRef<ArticleBaseModel>;

/// See also [articlePaginatedData].
@ProviderFor(articlePaginatedData)
const articlePaginatedDataProvider = ArticlePaginatedDataFamily();

/// See also [articlePaginatedData].
class ArticlePaginatedDataFamily extends Family<AsyncValue<ArticleBaseModel>> {
  /// See also [articlePaginatedData].
  const ArticlePaginatedDataFamily();

  /// See also [articlePaginatedData].
  ArticlePaginatedDataProvider call({
    int? offset = 0,
    int? limit = 10,
  }) {
    return ArticlePaginatedDataProvider(
      offset: offset,
      limit: limit,
    );
  }

  @override
  ArticlePaginatedDataProvider getProviderOverride(
    covariant ArticlePaginatedDataProvider provider,
  ) {
    return call(
      offset: provider.offset,
      limit: provider.limit,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'articlePaginatedDataProvider';
}

/// See also [articlePaginatedData].
class ArticlePaginatedDataProvider
    extends AutoDisposeFutureProvider<ArticleBaseModel> {
  /// See also [articlePaginatedData].
  ArticlePaginatedDataProvider({
    this.offset = 0,
    this.limit = 10,
  }) : super.internal(
          (ref) => articlePaginatedData(
            ref,
            offset: offset,
            limit: limit,
          ),
          from: articlePaginatedDataProvider,
          name: r'articlePaginatedDataProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$articlePaginatedDataHash,
          dependencies: ArticlePaginatedDataFamily._dependencies,
          allTransitiveDependencies:
              ArticlePaginatedDataFamily._allTransitiveDependencies,
        );

  final int? offset;
  final int? limit;

  @override
  bool operator ==(Object other) {
    return other is ArticlePaginatedDataProvider &&
        other.offset == offset &&
        other.limit == limit;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, offset.hashCode);
    hash = _SystemHash.combine(hash, limit.hashCode);

    return _SystemHash.finish(hash);
  }
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member
