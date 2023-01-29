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
}
