// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rocket_riverpod.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$rocketsHash() => r'd47e6e00a032e3897ba145ad5904dc21dd824874';

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

/// See also [rockets].
@ProviderFor(rockets)
const rocketsProvider = RocketsFamily();

/// See also [rockets].
class RocketsFamily extends Family<AsyncValue<Rocket>> {
  /// See also [rockets].
  const RocketsFamily();

  /// See also [rockets].
  RocketsProvider call({
    required String rocketID,
  }) {
    return RocketsProvider(
      rocketID: rocketID,
    );
  }

  @override
  RocketsProvider getProviderOverride(
    covariant RocketsProvider provider,
  ) {
    return call(
      rocketID: provider.rocketID,
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
  String? get name => r'rocketsProvider';
}

/// See also [rockets].
class RocketsProvider extends FutureProvider<Rocket> {
  /// See also [rockets].
  RocketsProvider({
    required String rocketID,
  }) : this._internal(
          (ref) => rockets(
            ref as RocketsRef,
            rocketID: rocketID,
          ),
          from: rocketsProvider,
          name: r'rocketsProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$rocketsHash,
          dependencies: RocketsFamily._dependencies,
          allTransitiveDependencies: RocketsFamily._allTransitiveDependencies,
          rocketID: rocketID,
        );

  RocketsProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.rocketID,
  }) : super.internal();

  final String rocketID;

  @override
  Override overrideWith(
    FutureOr<Rocket> Function(RocketsRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: RocketsProvider._internal(
        (ref) => create(ref as RocketsRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        rocketID: rocketID,
      ),
    );
  }

  @override
  FutureProviderElement<Rocket> createElement() {
    return _RocketsProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is RocketsProvider && other.rocketID == rocketID;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, rocketID.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin RocketsRef on FutureProviderRef<Rocket> {
  /// The parameter `rocketID` of this provider.
  String get rocketID;
}

class _RocketsProviderElement extends FutureProviderElement<Rocket>
    with RocketsRef {
  _RocketsProviderElement(super.provider);

  @override
  String get rocketID => (origin as RocketsProvider).rocketID;
}
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
