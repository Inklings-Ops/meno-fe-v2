import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user_credentials.dart';
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'auth_state.dart';
part 'auth_notifier.freezed.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(di<IAuthFacade>());
});

@injectable
class AuthNotifier extends StateNotifier<AuthState> {
  AuthNotifier(this._facade) : super(const AuthState.initial());

  final IAuthFacade _facade;

  Future<void> checkAuthenticated() async {
    final option = await _facade.authCredentials();
    state = option.fold(
      () => const AuthState.unauthenticated(),
      (credentials) {
        if (credentials?.token == null) {
          return const AuthState.partiallyUnauthenticated();
        } else if (credentials?.user?.verified == false) {
          return const AuthState.unverified();
        } else {
          return AuthState.authenticated(credentials!);
        }
      },
    );
  }

  Future<void> checkVerified() async {
    if (await _facade.isVerified()) {
      state = const AuthState.verified();
    } else {
      state = const AuthState.unverified();
    }
  }

  Future<void> logout() async {
    await _facade.logout().whenComplete(() {
      state = const AuthState.unauthenticated();
    });
  }

  Future<void> logoutPartially() async {
    await _facade.partialLogout().whenComplete(() {
      state = const AuthState.partiallyUnauthenticated();
    });
  }

  Future<void> sendVerificationEmail() async {}
}
