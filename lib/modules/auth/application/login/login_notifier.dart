import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/auth/domain/errors/auth_failure.dart';
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart';

part 'login_notifier.freezed.dart';
part 'login_state.dart';

final loginProvider = StateNotifierProvider<LoginNotifier, LoginState>((ref) {
  return LoginNotifier(di<IAuthFacade>());
});

@injectable
class LoginNotifier extends StateNotifier<LoginState> {
  LoginNotifier(this._facade) : super(LoginState.initial());
  final IAuthFacade _facade;

  bool get isFormValid => state.email.isValid() || state.password.get() != null;

  void emailChanged(String email) {
    state = state.copyWith(email: IEmail(email), option: none());
  }

  Future<void> googleLoginPressed() async {
    state = state.copyWith(googleButtonLoading: true, loading: false);

    final r = await _facade.google(isRegister: false);

    state = state.copyWith(googleButtonLoading: false, option: some(r));
  }

  Future<void> loginPressed() async {
    Either<AuthFailure, Unit> r;

    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.get() != null;

    if (isEmailValid && isPasswordValid) {
      state = state.copyWith(loading: true, option: none());

      r = await _facade.login(email: state.email, password: state.password);

      state = state.copyWith(loading: false, option: some(r));
    }

    state = state.copyWith(loading: false, showError: true, option: none());
  }

  void passwordChanged(String password) {
    state = state.copyWith(
      password: IPassword(password, isSignIn: true),
      option: none(),
    );
  }
}
