import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user_credentials.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/errors/broadcast_failure.dart';

abstract class IBroadcastFacade {
  Future<Either<BroadcastFailure, Unit>> addBroadcastCoHost({
    required String broadcastId,
    required String cohostId,
  });

  Future<Either<BroadcastFailure, Broadcast>> createBroadcast({
    required IBroadcastTitle title,
    required IBroadcastDescription description,
    String? timezone,
    List<String>? cohosts,
    File? artwork,
  });

  Future<Either<BroadcastFailure, Unit>> deleteBroadcast({
    required String broadcastId,
  });

  Future<Either<BroadcastFailure, Unit>> deleteBroadcastCoHost({
    required String broadcastId,
    required String cohostId,
  });

  Future<Either<BroadcastFailure, Broadcast>> editBroadcast({
    required String broadcastId,
    IBroadcastTitle? title,
    IBroadcastDescription? description,
    String? timezone,
    File? image,
  });

  Future<void> endBroadcast({required String broadcastId});

  Future<UserCredentials> getUserCredentials();

  Future<Either<BroadcastFailure, String>> joinBroadcast({
    required String broadcastId,
  });

  Future<Either<BroadcastFailure, Broadcast>> startBroadcast({
    required String broadcastId,
  });

  Future<Either<BroadcastFailure, List<Broadcast?>>> getCurrentUserBroadcasts();

  Future<Either<BroadcastFailure, List<Broadcast?>>> getBroadcastsByUser({
    required String creatorId,
    String? include,
    String? sortBy,
    String? orderBy,
  });

  Future<Either<BroadcastFailure, List<Broadcast?>>> getBroadcasts({
    /// Status of broadcast: `active` or `inactive`
    String? status,

    /// Whether to include number of total listeners or not
    String? include,

    /// Greater than end time
    String? gtEndTime,

    /// Less than end time
    String? ltEndTime,

    /// Equal to end time
    String? eqEndTime,

    /// Greater than start time
    String? gtStartTime,

    /// Less than start time
    String? ltStartTime,

    /// Equal to start time
    String? eqStartTime,

    /// returns broadcasts by this creator id
    String? creatorId,

    /// returns all broadcasts excluding this creator id
    String? notCreatorId,

    /// Order by either `ASC` or `DESC`
    String? orderBy,
    String? sortBy,
    bool? onlySubscriptions,
    String? keywords,
    int? page,
    int? size,
  });
}
