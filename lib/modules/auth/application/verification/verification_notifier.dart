import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/auth/domain/errors/auth_failure.dart';
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart';

part 'verification_notifier.freezed.dart';
part 'verification_state.dart';

final verificationProvider =
    StateNotifierProvider.autoDispose<VerificationNotifier, VerificationState>(
  (ref) => VerificationNotifier(di<IAuthFacade>()),
);

class VerificationNotifier extends StateNotifier<VerificationState> {
  final IAuthFacade _facade;
  VerificationNotifier(this._facade) : super(VerificationState.initial());

  bool get isFormValid => state.email.isValid() || state.otp.isValid();

  void emailChanged(String email) {
    state = state.copyWith(email: IEmail(email));
  }

  Future<void> init() async {
    final user = await _facade.getUser();
    if (user != null) {
      state = state.copyWith(email: user.email);
    }
  }

  void otpChanged(String otp) {
    state = state.copyWith(otp: IOtp(otp));
  }

  Future<void> verifyPressed() async {
    Either<AuthFailure, bool> r;

    final isEmailValid = state.email.isValid();
    final isOtpValid = state.otp.isValid();

    if (isEmailValid && isOtpValid) {
      state = state.copyWith(loading: true);

      r = await _facade.verify(email: state.email, otp: state.otp);

      state = state.copyWith(loading: false, option: some(r));
    }

    state = state.copyWith(loading: false, showError: true, option: none());
  }
}
