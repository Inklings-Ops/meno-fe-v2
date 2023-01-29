part of 'auth_notifier.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.authenticated(UserCredentials credentials) =
      _Authenticated;
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.partiallyUnauthenticated() =
      _PartiallyUnauthenticated;
  const factory AuthState.unverified() = _Unverified;
  const factory AuthState.verified() = _Verified;
}
