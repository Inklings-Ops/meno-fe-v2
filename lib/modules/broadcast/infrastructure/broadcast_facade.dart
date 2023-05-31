// ignore_for_file: depend_on_referenced_packages

import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/common/utils/display_broadcast_error.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user_credentials.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_credentials_mapper.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/errors/broadcast_failure.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/i_broadcast_facade.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/local/broadcast_local_datasource.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_mapper.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/remote/broadcast_remote_datasource.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/creator_dto.dart';

@LazySingleton(as: IBroadcastFacade)
class BroadcastFacade implements IBroadcastFacade {
  final BroadcastLocalDatasource _local;
  final BroadcastRemoteDatasource _remote;
  final BroadcastMapper _mapper;

  BroadcastFacade(this._local, this._remote, this._mapper);
  @override
  Future<Either<BroadcastFailure, Unit>> addBroadcastCoHost({
    required String broadcastId,
    required String cohostId,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<BroadcastFailure, Broadcast>> createBroadcast({
    required IBroadcastTitle title,
    required IBroadcastDescription description,
    String? timezone,
    List<String>? cohosts,
    File? artwork,
  }) async {
    try {
      final res = await _remote.createBroadcast(
        title: title.get()!,
        description: description.get(),
        cohosts: cohosts,
        image: artwork,
        timezone: timezone,
      );

      return right(_mapper.toDomain(res.data)!);
    } on DioError catch (error) {
      final message = displayBroadcastError(error);
      if (message != null) {
        return left(BroadcastFailure.message(message));
      } else {
        return left(const BroadcastFailure.serverError());
      }
    }
  }

  @override
  Future<Either<BroadcastFailure, Unit>> deleteBroadcast({
    required String broadcastId,
  }) async {
    try {
      await _remote.deleteBroadcast(broadcastId: broadcastId);

      return right(unit);
    } on DioError catch (error) {
      final message = displayBroadcastError(error);
      if (message != null) {
        return left(BroadcastFailure.message(message));
      } else {
        return left(const BroadcastFailure.serverError());
      }
    }
  }

  @override
  Future<Either<BroadcastFailure, Unit>> deleteBroadcastCoHost({
    required String broadcastId,
    required String cohostId,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Either<BroadcastFailure, Broadcast>> editBroadcast({
    required String broadcastId,
    IBroadcastTitle? title,
    IBroadcastDescription? description,
    String? timezone,
    File? image,
  }) async {
    try {
      final res = await _remote.editBroadcast(
        broadcastId: broadcastId,
        title: title?.get(),
        description: description?.get(),
        image: image,
        timezone: timezone,
      );

      if (res.statusCode != HttpStatus.ok) {
        return left(BroadcastFailure.message(res.message!));
      }

      return right(_mapper.toDomain(res.data)!);
    } on DioError catch (error) {
      final message = displayBroadcastError(error);
      if (message != null) {
        return left(BroadcastFailure.message(message));
      } else {
        return left(const BroadcastFailure.serverError());
      }
    }
  }

  @override
  Future<void> endBroadcast({required String broadcastId}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<BroadcastFailure, String>> joinBroadcast({
    required String broadcastId,
  }) async {
    try {
      final res = await _remote.joinBroadcast(broadcastId: broadcastId);

      return right(res.data!.agoraToken!);
    } on DioError catch (error) {
      final message = displayBroadcastError(error);
      if (message != null) {
        return left(BroadcastFailure.message(message));
      } else {
        return left(const BroadcastFailure.serverError());
      }
    }
  }

  @override
  Future<Either<BroadcastFailure, Broadcast>> startBroadcast({
    required String broadcastId,
  }) async {
    final credentials = await _local.getUserCredentials();

    final res = await _remote.startBroadcast(broadcastId: broadcastId);

    final broadcast = res.data?.copyWith(
      status: 'active',
      creator: CreatorDto(
        id: credentials?.user?.id,
        fullName: credentials?.user?.fullName,
        imageUrl: credentials?.user?.imageUrl,
      ),
    );

    return right(_mapper.toDomain(broadcast)!);
  }

  @override
  Future<UserCredentials> getUserCredentials() async {
    final dto = await _local.getUserCredentials();
    return UserCredentialsMapper().toDomain(dto)!;
  }

  @override
  Future<Either<BroadcastFailure, List<Broadcast?>>>
      getCurrentUserBroadcasts() async {
    try {
      final credentials = await _local.getUserCredentials();

      final res = await _remote.getAllCurrentUserBroadcasts(
        creatorId: credentials!.user!.id,
        include: 'totalListeners',
      );
      final dto = res.data!.broadcasts;
      final broadcasts = dto.map((e) => _mapper.toDomain(e)).toList();
      return right(broadcasts);
    } on DioError {
      return left(const BroadcastFailure.serverError());
    }
  }

  @override
  Future<Either<BroadcastFailure, List<Broadcast?>>> getBroadcasts({
    String? status,
    String? include,
    String? gtEndTime,
    String? ltEndTime,
    String? eqEndTime,
    String? gtStartTime,
    String? ltStartTime,
    String? eqStartTime,
    String? creatorId,
    String? notCreatorId,
    String? orderBy,
    String? sortBy,
    bool? onlySubscriptions,
    String? keywords,
    int? page,
    int? size,
  }) async {
    try {
      final res = await _remote.getBroadcasts(
        creatorId: creatorId,
        status: status,
        include: include,
        gtEndTime: gtEndTime,
        ltEndTime: ltEndTime,
        eqEndTime: eqEndTime,
        gtStartTime: gtStartTime,
        ltStartTime: ltStartTime,
        eqStartTime: eqStartTime,
        notCreatorId: notCreatorId,
        orderBy: orderBy,
        sortBy: sortBy,
        onlySubscriptions: onlySubscriptions,
        keywords: keywords,
        page: page,
        size: size,
      );
      final dto = res.data!.broadcasts;
      final broadcasts = dto.map((e) => _mapper.toDomain(e)).toList();
      return right(broadcasts);
    } on DioError {
      return left(const BroadcastFailure.serverError());
    }
  }

  @override
  Future<Either<BroadcastFailure, List<Broadcast?>>> getBroadcastsByUser({
    required String creatorId,
    String? include,
    String? sortBy,
    String? orderBy,
  }) async {
    try {
      final res = await _remote.getBroadcastsForUser(
        creatorId: creatorId,
        include: include,
        orderBy: orderBy,
        sortBy: sortBy,
      );
      final dto = res.data!.broadcasts;
      final broadcasts = dto.map((e) => _mapper.toDomain(e)).toList();
      return right(broadcasts);
    } on DioError {
      return left(const BroadcastFailure.serverError());
    }
  }

  @override
  Future<Either<BroadcastFailure, List<Broadcast?>>> search({
    String? creatorId,
    String? include,
    String? sortBy,
    String? orderBy,
  }) {
    throw UnimplementedError();
  }
}
