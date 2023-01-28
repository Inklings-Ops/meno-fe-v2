
part of 'forgot_password_notifier.dart';

@freezed
class ForgotPasswordState with _$ForgotPasswordState {
  const factory ForgotPasswordState({
    required IEmail email,
    required IOtp otp,
    required bool showError,
    required bool loading,
    required bool emailSent,
    required Option<Either<AuthFailure, Unit>> option,
  }) = _ForgotPasswordState;

  factory ForgotPasswordState.initial() => ForgotPasswordState(
        email: IEmail(''),
        otp: IOtp(''),
        showError: false,
        loading: false,
        emailSent: false,
        option: none(),
      );
}
