import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/auth/domain/errors/auth_failure.dart';
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart';

part 'forgot_password_state.dart';
part 'forgot_password_notifier.freezed.dart';

final forgotPasswordProvider =
    StateNotifierProvider<ForgotPasswordNotifier, ForgotPasswordState>(
  (ref) => ForgotPasswordNotifier(di<IAuthFacade>()),
);

class ForgotPasswordNotifier extends StateNotifier<ForgotPasswordState> {
  ForgotPasswordNotifier(this._facade) : super(ForgotPasswordState.initial());

  final IAuthFacade _facade;

  bool get isFormValid => state.otp.get() != null;

  void emailChanged(String email) {
    state = state.copyWith(email: IEmail(email));
  }

  void otpChanged(String otp) {
    state = state.copyWith(otp: IOtp(otp));
  }

  Future<void> requestOTP() async {
    Either<AuthFailure, Unit> r;

    if (state.email.isValid()) {
      state = state.copyWith(loading: true);

      r = await _facade.forgotPassword(state.email);

      state = state.copyWith(loading: false, emailSent: true, option: some(r));
    }

    state = state.copyWith(loading: false, showError: true, option: none());
  }

  Future<void> verifyOTP() async {
    // Either<AuthFailure, Unit> r;

    // if (state.email.isValid()) {
    //   state = state.copyWith(loading: true);

    //   r = await _facade.requestOTP(state.email);

    //   state = state.copyWith(loading: false, emailSent: true, option: some(r));
    // }

    // state = state.copyWith(loading: false, showError: true, option: none());
  }
}
