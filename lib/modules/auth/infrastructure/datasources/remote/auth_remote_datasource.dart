import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/core/responses/auth_response.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/dtos/user_credentials_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'auth_remote_datasource.g.dart';

@RestApi()
abstract class AuthRemoteDatasource {
  @factoryMethod
  factory AuthRemoteDatasource(
    Dio dio, {
    String baseUrl,
  }) = _AuthRemoteDatasource;

  @POST("/api/v1/users/password/change")
  Future<AuthResponse<UserCredentialsDto?>> changePassword({
    @Field() required String newPassword,
    @Field() required String currentPassword,
  });

  @POST("/api/v1/users/password/forgot")
  Future<AuthResponse<UserCredentialsDto?>> forgotPassword({
    @Field() required String email,
  });

  @POST("/api/v1/users/signin/google")
  Future<AuthResponse<UserCredentialsDto>> googleSignIn(
    @Field() String idToken,
  );

  @POST("/api/v1/users/signup/google")
  Future<AuthResponse<UserCredentialsDto>> googleSignUp(
    @Field() String idToken,
  );

  @POST("/api/v1/users/signin")
  Future<AuthResponse<UserCredentialsDto>> login({
    @Field() required String email,
    @Field() required String password,
  });

  @POST("/api/v1/users/signup")
  @MultiPart()
  Future<AuthResponse<UserCredentialsDto>> register({
    @Part() required String fullName,
    @Part() String? bio,
    @Part() required String email,
    @Part() required String password,
    @Part(name: 'image', contentType: 'image/png') File? image,
  });

  @POST("/api/v1/users/otp")
  Future<AuthResponse<UserCredentialsDto?>> requestOTP({
    @Field() required String type,
    @Field() required String email,
  });

  @POST("/api/v1/users/password/reset")
  Future<AuthResponse<UserCredentialsDto?>> resetPassword({
    @Field() required String email,
    @Field() required String code,
    @Field() required String newPassword,
  });

  @POST("/api/v1/users/email/verify")
  Future<AuthResponse<UserCredentialsDto?>> verify({
    @Field() required String email,
    @Field() required String code,
  });

  @DELETE("/api/v1/users")
  Future<AuthResponse<UserCredentialsDto?>> delete();
}
