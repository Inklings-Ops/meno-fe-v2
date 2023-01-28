import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/auth/domain/errors/auth_failure.dart';
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart';

part 'login_return_notifier.freezed.dart';
part 'login_return_state.dart';

final loginReturnProvider =
    StateNotifierProvider.autoDispose<LoginReturnNotifier, LoginReturnState>(
  (ref) => LoginReturnNotifier(di<IAuthFacade>()),
);

class LoginReturnNotifier extends StateNotifier<LoginReturnState> {
  LoginReturnNotifier(this._facade) : super(LoginReturnState.initial());
  final IAuthFacade _facade;

  bool get isFormValid =>
      state.email.get() != null || state.password.get() != null;

  Future<void> init() async {
    state = state.copyWith(loading: true, option: none());
    final user = await _facade.getUser();
    state = state.copyWith(
      fullName: user?.fullName,
      avatarUrl: user?.imageUrl,
      email: user!.email,
      password: IPassword(''),
      showError: false,
      loading: false,
      option: none(),
    );
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
