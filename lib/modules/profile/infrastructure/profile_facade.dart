// ignore_for_file: depend_on_referenced_packages

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';
import 'package:logger/logger.dart';
import 'package:meno_fe_v2/common/utils/display_profile_error.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';
import 'package:meno_fe_v2/modules/profile/domain/errors/profile_failure.dart';
import 'package:meno_fe_v2/modules/profile/domain/i_profile_facade.dart';
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/local/profile_local_datasource.dart';
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_mapper.dart';
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/remote/profile_remote_datasource.dart';

@Injectable(as: IProfileFacade)
class ProfileFacade implements IProfileFacade {
  ProfileFacade(this._local, this._remote);
  final ProfileLocalDatasource _local;

  final ProfileRemoteDatasource _remote;
  final _mapper = ProfileMapper();

  final _log = Logger();

  @override
  Future<Option<Profile?>> authProfile() async {
    final authUserId = await _local.getAuthUserId();
    final localProfile = await _local.getProfile();

    if (localProfile == null) {
      final res = await _remote.getProfile(userId: authUserId!);
      await _local.storeProfile(res.data);
      return optionOf(_mapper.toDomain(res.data));
    }

    return optionOf(_mapper.toDomain(localProfile));
  }

  @override
  Future<Either<ProfileFailure, Unit>> editProfile({
    IFullName? fullName,
    IBio? bio,
    IAvatar? avatar,
  }) async {
    final authUserId = await _local.getAuthUserId();

    final fullName_ = fullName?.get();
    final bio_ = bio?.get();
    final avatar_ = avatar?.get();

    try {
      final res = await _remote.editProfile(
        userId: authUserId!,
        fullName: fullName_,
        bio: bio_,
        image: avatar_,
      );

      await _local.storeProfile(res.data);

      return right(unit);
    } on DioError catch (error) {
      _log.e(error.response);
      final message = displayProfileError(error);
      if (message != null) {
        return left(ProfileFailure.message(message));
      } else {
        return left(const ProfileFailure.serverError());
      }
    }
  }

  @override
  Future<Profile?> getAuthProfile() async {
    final authUserId = await _local.getAuthUserId();
    final localProfile = await _local.getProfile();

    if (localProfile == null) {
      final res = await _remote.getProfile(userId: authUserId!);
      await _local.storeProfile(res.data);
      return _mapper.toDomain(res.data);
    }

    return _mapper.toDomain(localProfile);
  }

  @override
  Future<Profile?> getProfile({required String id}) async {
    final res = await _remote.getProfile(userId: id);

    if (res.data == null) {
      return null;
    }

    return _mapper.toDomain(res.data);
  }

  @override
  Future<Option<Profile?>> profile({required String id}) async {
    final res = await _remote.getProfile(userId: id);

    if (res.data == null) {
      return optionOf(null);
    }

    return optionOf(_mapper.toDomain(res.data));
  }
}
