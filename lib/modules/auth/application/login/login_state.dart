part of 'login_notifier.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    required IEmail email,
    required IPassword password,
    required bool showError,
    required bool loading,
    required bool googleButtonLoading,
    required Option<Either<AuthFailure, Unit>> option,
  }) = _LoginState;

  factory LoginState.initial() => LoginState(
        email: IEmail(''),
        password: IPassword(''),
        showError: false,
        loading: false,
        googleButtonLoading: false,
        option: none(),
      );
}
