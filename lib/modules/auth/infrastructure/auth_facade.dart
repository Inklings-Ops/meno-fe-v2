// ignore_for_file: depend_on_referenced_packages

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter/services.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meno_fe_v2/common/utils/display_auth_error.dart';
import 'package:meno_fe_v2/core/responses/auth_response.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/otp_type.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user_credentials.dart';
import 'package:meno_fe_v2/modules/auth/domain/errors/auth_failure.dart';
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/local/auth_local_datasource.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_credentials_mapper.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/dtos/user_credentials_dto.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final AuthLocalDatasource _local;
  final AuthRemoteDatasource _remote;

  AuthFacade(this._local, this._remote);

  final _google = GoogleSignIn();
  final _mapper = UserCredentialsMapper();

  @override
  Future<Option<UserCredentials?>> authCredentials() async {
    final credentials = await _local.getCredentials();

    if (credentials != null) {
      return optionOf(_mapper.toDomain(credentials));
    } else {
      return optionOf(null);
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> changePassword({
    required IPassword newPassword,
    required IPassword currentPassword,
  }) async {
    try {
      await _remote.changePassword(
        newPassword: newPassword.get()!,
        currentPassword: currentPassword.get()!,
      );
      return right(unit);
    } on DioError catch (error) {
      final message = displayAuthError(error);
      if (message != null) {
        return left(AuthFailure.message(message));
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> forgotPassword(IEmail email) async {
    try {
      await _remote.forgotPassword(email: email.get()!);
      return right(unit);
    } on DioError catch (error) {
      final message = displayAuthError(error);
      if (message != null) {
        return left(AuthFailure.message(message));
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<String?> getToken() async => await _local.getToken();

  @override
  Future<User?> getUser() async {
    final credentials = await _local.getCredentials();
    return _mapper.toDomain(credentials)?.user;
  }

  @override
  Future<Either<AuthFailure, Unit>> google({bool isRegister = false}) async {
    AuthResponse<UserCredentialsDto> res;
    try {
      final GoogleSignInAccount? gAccount = await _google.signIn();
      Logger().i(gAccount);

      if (gAccount == null) {
        return left(const AuthFailure.message('No Google account'));
      }

      GoogleSignInAuthentication gAuth = await gAccount.authentication;
      Logger().i(gAuth);

      if (isRegister) {
        res = await _remote.googleSignUp(gAuth.idToken!);
      } else {
        res = await _remote.googleSignIn(gAuth.idToken!);
      }

      Logger().i(res);

      await _local.storeToken(res.data!.token!);
      await _local.storeCredentials(res.data!);

      return right(unit);
    } on DioError catch (error) {
      final message = displayAuthError(error);
      if (message != null) {
        return left(AuthFailure.message(message));
      } else {
        return left(const AuthFailure.serverError());
      }
    } on PlatformException catch (error) {
      Logger().i(error);
      Logger().i(error.message);
      return left(AuthFailure.message(error.message!));
    }
  }

  @override
  Future<bool> isVerified() async {
    final credentials = await _local.getCredentials();
    if (credentials?.user?.verified == true) {
      return true;
    } else {
      return false;
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> login({
    required IEmail email,
    required IPassword password,
  }) async {
    final email_ = email.get()!;
    final password_ = password.get()!;

    try {
      final res = await _remote.login(email: email_, password: password_);

      await _local.storeToken(res.data!.token!);
      await _local.storeCredentials(res.data!);

      return right(unit);
    } on DioError catch (error) {
      Logger().i(error.response);

      final message = displayAuthError(error);
      if (message != null) {
        return left(AuthFailure.message(message));
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<void> logout() => Future.wait([_local.deleteAll()]);

  @override
  Future<void> partialLogout() => Future.wait([
        _local.deleteCredentialToken(),
        _local.deleteToken(),
      ]);

  @override
  Future<Either<AuthFailure, Unit>> register({
    required IFullName fullName,
    IBio? bio,
    required IEmail email,
    required IPassword password,
    IAvatar? avatar,
  }) async {
    try {
      final res = await _remote.register(
        fullName: fullName.get()!,
        bio: bio?.get(),
        email: email.get()!,
        password: password.get()!,
        image: avatar?.get(),
      );

      await _local.storeToken(res.data!.token!);
      await _local.storeCredentials(res.data!);

      return right(unit);
    } on DioError catch (error) {
      final message = displayAuthError(error);
      if (message != null) {
        return left(AuthFailure.message(message));
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> requestOTP(OtpType type) async {
    final email = await getUser().then((value) => value!.email.get()!);
    try {
      await _remote.requestOTP(type: type.name, email: email);
      return right(unit);
    } on DioError catch (error) {
      final message = displayAuthError(error);
      if (message != null) {
        return left(AuthFailure.message(message));
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> resetPassword({
    required IEmail email,
    required IOtp code,
    required IPassword newPassword,
  }) async {
    try {
      await _remote.resetPassword(
        email: email.get()!,
        code: code.get()!,
        newPassword: newPassword.get()!,
      );
      return right(unit);
    } on DioError catch (error) {
      final message = displayAuthError(error);
      if (message != null) {
        return left(AuthFailure.message(message));
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, bool>> verify({
    required IEmail email,
    required IOtp otp,
  }) async {
    try {
      await _remote.verify(email: email.get()!, code: otp.get()!);
      await _local.verifyUser();
      return right(true);
    } on DioError catch (error) {
      final message = displayAuthError(error);
      if (message != null) {
        return left(AuthFailure.message(message));
      } else {
        return left(const AuthFailure.serverError());
      }
    }
  }
}
