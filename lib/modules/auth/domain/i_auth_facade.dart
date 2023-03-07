import 'package:dartz/dartz.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/otp_type.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/role.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user_credentials.dart';
import 'package:meno_fe_v2/modules/auth/domain/errors/auth_failure.dart';

/// Meno Authentication Facade
abstract class IAuthFacade {
  /// Get the [Role] of the currently signed in user.
  Future<Role> get role;

  Future<Option<UserCredentials?>> authCredentials();

  /// Change Password facade
  Future<Either<AuthFailure, Unit>> changePassword({
    required IPassword newPassword,
    required IPassword currentPassword,
  });

  /// Forgot password facade
  Future<Either<AuthFailure, Unit>> forgotPassword(IEmail email);

  Future<String?> getToken();

  Future<User?> getUser();

  /// Google sign in or sign up facade
  Future<Either<AuthFailure, Unit>> google({bool isRegister = false});

  /// Checks if the authenticated user is verified
  Future<bool> isVerified();

  /// Sign in facade
  Future<Either<AuthFailure, Unit>> login({
    required IEmail email,
    required IPassword password,
  });

  /// Sign out facade
  Future<void> logout();

  /// Partially sigTran out facade
  Future<void> partialLogout();

  /// Sign up facade
  Future<Either<AuthFailure, Unit>> register({
    required IFullName fullName,
    IBio? bio,
    required IEmail email,
    required IPassword password,
    IAvatar? avatar,
  });

  /// Request one time password for verification of user email facade
  Future<Either<AuthFailure, Unit>> requestOTP(OtpType type);

  /// Reset Password facade
  Future<Either<AuthFailure, Unit>> resetPassword({
    required IEmail email,
    required IOtp code,
    required IPassword newPassword,
  });

  /// User email verification facade;
  Future<Either<AuthFailure, bool>> verify({
    required IEmail email,
    required IOtp otp,
  });
}
