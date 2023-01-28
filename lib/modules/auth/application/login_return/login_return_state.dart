part of 'login_return_notifier.dart';

@freezed
class LoginReturnState with _$LoginReturnState {
  const factory LoginReturnState({
    IFullName? fullName,
    String? avatarUrl,
    required IEmail email,
    required IPassword password,
    required bool showError,
    required bool loading,
    required Option<Either<AuthFailure, Unit>> option,
  }) = _LoginReturnState;

  factory LoginReturnState.initial() => LoginReturnState(
        fullName: IFullName(''),
        avatarUrl: null,
        email: IEmail(''),
        password: IPassword(''),
        showError: false,
        loading: false,
        option: none(),
      );
}
