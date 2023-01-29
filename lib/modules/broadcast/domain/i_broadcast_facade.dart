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

  Future<Either<BroadcastFailure, Unit>> leaveBroadcast({
    required String broadcastId,
  });

  Future<Either<BroadcastFailure, Broadcast>> startBroadcast({
    required String broadcastId,
  });
}
