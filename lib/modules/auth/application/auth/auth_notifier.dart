import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/common/utils/privacy_policy.dart';
import 'package:meno_fe_v2/common/utils/terms_of_use.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/otp_type.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/role.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user_credentials.dart';
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart';

part 'auth_notifier.freezed.dart';
part 'auth_state.dart';

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>((ref) {
  return AuthNotifier(di<IAuthFacade>());
});

final roleProvider = FutureProvider<Role>((ref) => di<IAuthFacade>().role);

final termsOfUseProvider = Provider<Map<String, String>>((ref) {
  final role = ref.watch(roleProvider).value;
  if (role == Role.admin) {
    return adminTermsOfUse;
  } else {
    return guestTermsOfUse;
  }
});

final privacyPolicyProvider = Provider<Map<String, String>>((ref) {
  final role = ref.watch(roleProvider).value;
  if (role == Role.admin) {
    return adminPrivacyPolicy;
  } else {
    return guestPrivacyPolicy;
  }
});

@injectable
class AuthNotifier extends StateNotifier<AuthState> {
  final IAuthFacade _facade;

  AuthNotifier(this._facade) : super(const AuthState.initial());

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
          if (credentials?.user?.role == Role.admin) {
            return AuthState.adminAuth(credentials!);
          } else {
            return AuthState.guestAuth(credentials!);
          }
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

  Future<void> requestOTP(OtpType type) async {
    await _facade.requestOTP(type);
    // if (type == OtpType.verifyEmail) {
    state = const AuthState.unverified();
    // } else {
    //   state;
    //   // state = const AuthState.passwordReset();
    // }
  }

  Future<void> deleteUser() async {
    await _facade.deleteUser().whenComplete(() {
      state = const AuthState.unauthenticated();
    });
  }
}
