// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'popular_movies_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$popularMoviesHash() => r'1942ef97dbc5754f13d2ac673ac40da8a90b406b';

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

/// See also [popularMovies].
@ProviderFor(popularMovies)
const popularMoviesProvider = PopularMoviesFamily();

/// See also [popularMovies].
class PopularMoviesFamily extends Family<AsyncValue<List<MovieEntity>>> {
  /// See also [popularMovies].
  const PopularMoviesFamily();

  /// See also [popularMovies].
  PopularMoviesProvider call({
    required int page,
  }) {
    return PopularMoviesProvider(
      page: page,
    );
  }

  @override
  PopularMoviesProvider getProviderOverride(
    covariant PopularMoviesProvider provider,
  ) {
    return call(
      page: provider.page,
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
  String? get name => r'popularMoviesProvider';
}

/// See also [popularMovies].
class PopularMoviesProvider
    extends AutoDisposeFutureProvider<List<MovieEntity>> {
  /// See also [popularMovies].
  PopularMoviesProvider({
    required int page,
  }) : this._internal(
          (ref) => popularMovies(
            ref as PopularMoviesRef,
            page: page,
          ),
          from: popularMoviesProvider,
          name: r'popularMoviesProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$popularMoviesHash,
          dependencies: PopularMoviesFamily._dependencies,
          allTransitiveDependencies:
              PopularMoviesFamily._allTransitiveDependencies,
          page: page,
        );

  PopularMoviesProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.page,
  }) : super.internal();

  final int page;

  @override
  Override overrideWith(
    FutureOr<List<MovieEntity>> Function(PopularMoviesRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: PopularMoviesProvider._internal(
        (ref) => create(ref as PopularMoviesRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        page: page,
      ),
    );
  }

  @override
  AutoDisposeFutureProviderElement<List<MovieEntity>> createElement() {
    return _PopularMoviesProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is PopularMoviesProvider && other.page == page;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, page.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin PopularMoviesRef on AutoDisposeFutureProviderRef<List<MovieEntity>> {
  /// The parameter `page` of this provider.
  int get page;
}

class _PopularMoviesProviderElement
    extends AutoDisposeFutureProviderElement<List<MovieEntity>>
    with PopularMoviesRef {
  _PopularMoviesProviderElement(super.provider);

  @override
  int get page => (origin as PopularMoviesProvider).page;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
