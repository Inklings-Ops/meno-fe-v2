import 'dart:io';

import 'package:dio/dio.dart' hide Headers;
import 'package:http_parser/http_parser.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/core/responses/broadcast_response.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/broadcast_dto.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/broadcast_list_data_dto.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/join_broadcast_data_dto.dart';
import 'package:retrofit/retrofit.dart';

part 'broadcast_remote_datasource.g.dart';

@RestApi()
abstract class BroadcastRemoteDatasource {
  @factoryMethod
  factory BroadcastRemoteDatasource(
    Dio dio, {
    String baseUrl,
  }) = _BroadcastRemoteDatasource;

  @DELETE("/api/v1/broadcasts/{broadcastId}/co-hosts")
  Future<BroadcastResponse<BroadcastDto?>> addBroadcastCoHost({
    @Path("broadcastId") required String broadcastId,
    @Field() required String cohostId,
  });

  @POST("/api/v1/broadcasts")
  @MultiPart()
  Future<BroadcastResponse<BroadcastDto?>> createBroadcast({
    @Part() required String title,
    @Part() String? description,
    @Part() String? timezone,
    @Part() List<String>? cohosts,
    @Part(name: 'image', contentType: 'image/png') File? image,
  });

  @DELETE("/api/v1/broadcasts/{broadcastId}")
  Future<BroadcastResponse<BroadcastDto?>> deleteBroadcast({
    @Path("broadcastId") required String broadcastId,
  });

  @DELETE("/api/v1/broadcasts/{broadcastId}/co-hosts/{cohostId}")
  Future<BroadcastResponse<BroadcastDto?>> deleteBroadcastCoHost({
    @Path("broadcastId") required String broadcastId,
    @Path("cohostId") required String cohostId,
  });

  @PUT("/api/v1/broadcasts/{broadcastId}")
  @MultiPart()
  Future<BroadcastResponse<BroadcastDto?>> editBroadcast({
    @Path("broadcastId") required String broadcastId,
    @Part() String? title,
    @Part() String? description,
    @Part() String? timezone,
    @Part() File? image,
  });

  @POST("/api/v1/broadcasts/{broadcastId}/join")
  Future<BroadcastResponse<JoinBroadcastDataDto>> joinBroadcast({
    @Path("broadcastId") required String broadcastId,
  });

  @PUT("/api/v1/broadcasts/{broadcastId}/start")
  Future<BroadcastResponse<BroadcastDto?>> startBroadcast({
    @Path("broadcastId") required String broadcastId,
  });

  @GET("/api/v1/broadcasts/")
  Future<BroadcastResponse<BroadcastListDataDto?>> getAllCurrentUserBroadcasts({
    @Query('creatorId') required String creatorId,
    @Query('include') String? include,
  });

  @GET("/api/v1/broadcasts/")
  Future<BroadcastResponse<BroadcastListDataDto?>> getBroadcasts({
    /// Status of broadcast: `active` or `inactive`
    @Query("status") String? status,

    /// Whether to include number of total listeners or not
    @Query("include") String? include,

    /// Greater than end time
    @Query("endTime[gt]") String? gtEndTime,

    /// Less than end time
    @Query("endTime[lt]") String? ltEndTime,

    /// Equal to end time
    @Query("endTime[eq]") String? eqEndTime,

    /// Greater than start time
    @Query("startTime[gt]") String? gtStartTime,

    /// Less than start time
    @Query("startTime[lt]") String? ltStartTime,

    /// Equal to start time
    @Query("startTime[eq]") String? eqStartTime,

    /// returns broadcasts by this creator id
    @Query("creatorId") String? creatorId,

    /// returns all broadcasts excluding this creator id
    @Query("creatorId!") String? notCreatorId,

    /// Order by either `ASC` or `DESC`
    @Query("orderBy") String? orderBy,
    @Query("sortBy") String? sortBy,
    @Query("onlySubscriptions") bool? onlySubscriptions,
    @Query("keywords") String? keywords,
    @Query("page") int? page,
    @Query("size") int? size,
  });
}
