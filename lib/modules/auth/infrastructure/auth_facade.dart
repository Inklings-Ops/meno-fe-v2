import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user_credentials.dart';
import 'package:meno_fe_v2/modules/auth/domain/errors/auth_failure.dart';
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/local/auth_local_datasource.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_credentials_mapper.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/remote/auth_remote_datasource.dart';
import 'package:meno_fe_v2/common/utils/display_auth_error.dart';
// import 'package:logger/logger.dart';

@LazySingleton(as: IAuthFacade)
class AuthFacade implements IAuthFacade {
  final AuthLocalDatasource _local;
  final AuthRemoteDatasource _remote;
  final UserCredentialsMapper _mapper;

  AuthFacade(this._local, this._remote, this._mapper);

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
  Future<String?> getToken() async => await _local.getToken();

  @override
  Future<User?> getUser() async {
    final credentials = await _local.getCredentials();
    return _mapper.toDomain(credentials)?.user;
  }

  @override
  Future<Either<AuthFailure, Unit>> google({bool isSignUp = false}) {
    throw UnimplementedError();
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
  Future<void> partialLogout() async => await _local.deleteCredentialToken();

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
  Future<Either<AuthFailure, Unit>> requestOTP() {
    throw UnimplementedError();
  }

  @override
  Future<Either<AuthFailure, bool>> verify(
      {required IEmail email, required IOtp otp}) {
    throw UnimplementedError();
  }
}
