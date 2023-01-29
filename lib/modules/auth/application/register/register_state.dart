part of 'register_notifier.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    required IFullName fullName,
    required IEmail email,
    required IPassword password,
    TextEditingController? passwordController,
    IAvatar? avatar,
    required bool showError,
    required bool loading,
    required bool googleButtonLoading,
    required Option<Either<AuthFailure, Unit>> option,
  }) = _RegisterState;

  factory RegisterState.initial() => RegisterState(
        fullName: IFullName(''),
        email: IEmail(''),
        password: IPassword(''),
        passwordController: null,
        avatar: IAvatar(null),
        showError: false,
        loading: false,
        googleButtonLoading: false,
        option: none(),
      );
}
