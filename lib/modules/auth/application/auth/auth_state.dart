part of 'auth_notifier.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState.adminAuth(UserCredentials credentials) = _AdminAuth;
  const factory AuthState.guestAuth(UserCredentials credentials) = _GuestAuth;
  const factory AuthState.initial() = _Initial;
  const factory AuthState.unauthenticated() = _Unauthenticated;
  const factory AuthState.partiallyUnauthenticated() =
      _PartiallyUnauthenticated;
  const factory AuthState.unverified() = _Unverified;
  const factory AuthState.verified() = _Verified;
}
