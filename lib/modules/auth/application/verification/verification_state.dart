part of 'verification_notifier.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState({
    required IEmail email,
    required IOtp otp,
    required bool showError,
    required bool loading,
    required Option<Either<AuthFailure, bool>> option,
  }) = _VerificationState;

  factory VerificationState.initial() => VerificationState(
        email: IEmail(''),
        otp: IOtp(''),
        showError: false,
        loading: false,
        option: none(),
      );
}
