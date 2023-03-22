import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';
import 'package:meno_fe_v2/modules/profile/infrastructure/datasources/mapper/profile_stats_mapper.dart';
import 'package:meno_fe_v2/modules/profile/infrastructure/dtos/profile_dto.dart';

@lazySingleton
class ProfileMapper {
  Profile? toDomain(ProfileDto? dto) {
    if (dto == null) return null;

    return Profile(
      id: dto.id,
      fullName: IFullName(dto.fullName),
      bio: dto.bio != null ? IBio(dto.bio!) : null,
      imageUrl: dto.imageUrl,
      count: ProfileStatsMapper().toDomain(dto.count),
      isSubscribedToUser: dto.isSubscribedToUser,
      role: dto.role,
    );
  }
}
