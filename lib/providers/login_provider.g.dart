// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$userStateNotifierHash() => r'5e23c342b4ea016684abfa30ea9ba2dd8103db0b';

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

/// See also [userStateNotifier].
@ProviderFor(userStateNotifier)
const userStateNotifierProvider = UserStateNotifierFamily();

/// See also [userStateNotifier].
class UserStateNotifierFamily extends Family<AsyncValue<UserResponse>> {
  /// See also [userStateNotifier].
  const UserStateNotifierFamily();

  /// See also [userStateNotifier].
  UserStateNotifierProvider call(
    String user,
    String pass,
  ) {
    return UserStateNotifierProvider(
      user,
      pass,
    );
  }

  @override
  UserStateNotifierProvider getProviderOverride(
    covariant UserStateNotifierProvider provider,
  ) {
    return call(
      provider.user,
      provider.pass,
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
  String? get name => r'userStateNotifierProvider';
}

/// See also [userStateNotifier].
class UserStateNotifierProvider extends FutureProvider<UserResponse> {
  /// See also [userStateNotifier].
  UserStateNotifierProvider(
    String user,
    String pass,
  ) : this._internal(
          (ref) => userStateNotifier(
            ref as UserStateNotifierRef,
            user,
            pass,
          ),
          from: userStateNotifierProvider,
          name: r'userStateNotifierProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$userStateNotifierHash,
          dependencies: UserStateNotifierFamily._dependencies,
          allTransitiveDependencies:
              UserStateNotifierFamily._allTransitiveDependencies,
          user: user,
          pass: pass,
        );

  UserStateNotifierProvider._internal(
    super._createNotifier, {
    required super.name,
    required super.dependencies,
    required super.allTransitiveDependencies,
    required super.debugGetCreateSourceHash,
    required super.from,
    required this.user,
    required this.pass,
  }) : super.internal();

  final String user;
  final String pass;

  @override
  Override overrideWith(
    FutureOr<UserResponse> Function(UserStateNotifierRef provider) create,
  ) {
    return ProviderOverride(
      origin: this,
      override: UserStateNotifierProvider._internal(
        (ref) => create(ref as UserStateNotifierRef),
        from: from,
        name: null,
        dependencies: null,
        allTransitiveDependencies: null,
        debugGetCreateSourceHash: null,
        user: user,
        pass: pass,
      ),
    );
  }

  @override
  FutureProviderElement<UserResponse> createElement() {
    return _UserStateNotifierProviderElement(this);
  }

  @override
  bool operator ==(Object other) {
    return other is UserStateNotifierProvider &&
        other.user == user &&
        other.pass == pass;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, user.hashCode);
    hash = _SystemHash.combine(hash, pass.hashCode);

    return _SystemHash.finish(hash);
  }
}

mixin UserStateNotifierRef on FutureProviderRef<UserResponse> {
  /// The parameter `user` of this provider.
  String get user;

  /// The parameter `pass` of this provider.
  String get pass;
}

class _UserStateNotifierProviderElement
    extends FutureProviderElement<UserResponse> with UserStateNotifierRef {
  _UserStateNotifierProviderElement(super.provider);

  @override
  String get user => (origin as UserStateNotifierProvider).user;
  @override
  String get pass => (origin as UserStateNotifierProvider).pass;
}

String _$userCredentialsNotifierHash() =>
    r'4bf0a9f1a7876beadf5c91f2f3ec77da7808f49d';

/// See also [UserCredentialsNotifier].
@ProviderFor(UserCredentialsNotifier)
final userCredentialsNotifierProvider = AutoDisposeNotifierProvider<
    UserCredentialsNotifier, UserCredentials>.internal(
  UserCredentialsNotifier.new,
  name: r'userCredentialsNotifierProvider',
  debugGetCreateSourceHash: const bool.fromEnvironment('dart.vm.product')
      ? null
      : _$userCredentialsNotifierHash,
  dependencies: null,
  allTransitiveDependencies: null,
);

typedef _$UserCredentialsNotifier = AutoDisposeNotifier<UserCredentials>;
// ignore_for_file: type=lint
// ignore_for_file: subtype_of_sealed_class, invalid_use_of_internal_member, invalid_use_of_visible_for_testing_member
