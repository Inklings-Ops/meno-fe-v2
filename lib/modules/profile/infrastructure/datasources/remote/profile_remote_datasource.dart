import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/core/responses/profile_response.dart';
import 'package:meno_fe_v2/modules/profile/infrastructure/dtos/profile_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'profile_remote_datasource.g.dart';

@RestApi()
abstract class ProfileRemoteDatasource {
  @factoryMethod
  factory ProfileRemoteDatasource(
    Dio dio, {
    String baseUrl,
  }) = _ProfileRemoteDatasource;

  @POST("/api/v1/users/password/change")
  Future<ProfileResponse<dynamic>> changePassword({
    @Field() required String newPassword,
    @Field() required String currentPassword,
  });

  @PUT("/api/v1/users/{userId}/profile")
  @MultiPart()
  Future<ProfileResponse<ProfileDto?>> editProfile({
    @Path("userId") required String userId,
    @Part() String? fullName,
    @Part() String? bio,
    @Part(name: 'image', contentType: 'image/png') File? image,
  });

  @POST("/api/v1/users/password/forgot")
  Future<ProfileResponse<dynamic>> forgotPassword({
    @Field() required String email,
  });

  @GET("/api/v1/users/{userId}/profile")
  Future<ProfileResponse<ProfileDto?>> getProfile({
    @Path("userId") required String userId,
  });

  @POST("/api/v1/users/password/reset")
  Future<ProfileResponse<dynamic>> resetPassword({
    @Field() required String email,
    @Field() required String otp,
    @Field() required String newPassword,
  });
}
