// GENERATED CODE - DO NOT MODIFY BY HAND

part of '../app_dio.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$appDioHash() => r'ebc8474aa69f1aebbf24efe92d5ab60c041d13e6';

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

/// Http client
///
/// Copied from [appDio].
@ProviderFor(appDio)
const appDioProvider = AppDioFamily();

/// Http client
///
/// Copied from [appDio].
class AppDioFamily extends Family<Dio> {
  /// Http client
  ///
  /// Copied from [appDio].
  const AppDioFamily();

  /// Http client
  ///
  /// Copied from [appDio].
  AppDioProvider call(String baseUrl) {
    return AppDioProvider(baseUrl);
  }

  @override
  AppDioProvider getProviderOverride(covariant AppDioProvider provider) {
    return call(provider.baseUrl);
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'appDioProvider';
}

/// Http client
///
/// Copied from [appDio].
class AppDioProvider extends Provider<Dio> {
  /// Http client
  ///
  /// Copied from [appDio].
  AppDioProvider(String baseUrl)
    : this._internal(
        (ref) => appDio(ref as AppDioRef, baseUrl),
        from: appDioProvider,
        name: r'appDioProvider',
        debugGetCreateSourceHash:
            const bool.fromEnvironment('dart.vm.product') ? null : _$appDioHash,
        dependencies: AppDioFamily._dependencies,
        allTransitiveDependencies: AppDioFamily._allTransitiveDependencies,
        baseUrl: baseUrl,
      );

  AppDioProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.baseUrl,
  }) : super.internal();

  final String baseUrl;

  @override
  Override overrideWith(Dio Function(AppDioRef provider) create) {
    return ProviderOverride(
      origin: this,
      override: AppDioProvider._internal(
        (ref) => create(ref as AppDioRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        baseUrl: baseUrl,
      ),
    );
  }

  @override
  ProviderElement<Dio> createElement() {
    return _AppDioProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is AppDioProvider && other.baseUrl == baseUrl;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, baseUrl.hashCode);

    return _SystemHash.finish(hash);
  }
}

@Deprecated('Will be removed in 3.0. Use Ref instead')
// ignore: unused_element
mixin AppDioRef on ProviderRef<Dio> {
  /// The parameter `baseUrl` of this provider.
  String get baseUrl;
}

class _AppDioProviderElement extends ProviderElement<Dio> with AppDioRef {
  _AppDioProviderElement(super.provider);

  @override
  String get baseUrl => (origin as AppDioProvider).baseUrl;
}

// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member, deprecated_member_use_from_same_package
