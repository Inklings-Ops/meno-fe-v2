import 'package:dartz/dartz.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';
import 'package:meno_fe_v2/modules/profile/domain/errors/profile_failure.dart';

abstract class IProfileFacade {
  Future<Option<Profile?>> authProfile();

  Future<Either<ProfileFailure, Unit>> editProfile({
    IFullName? fullName,
    IBio? bio,
    IAvatar? avatar,
  });

  Future<Profile?> getAuthProfile();

  Future<Profile?> getProfile({required String id});

  Future<Option<Profile?>> profile({required String id});

  Future<Either<ProfileFailure, Unit>> subscribe(String userId);

  Future<Either<ProfileFailure, List<Profile?>>> subscribers({
    required String subscriptionId,
    required String subscriberId,
    String? include,
    String? keywords,
    int? page,
    int? size,
  });

  Future<Either<ProfileFailure, Unit>> unSubscribe(String userId);
}
