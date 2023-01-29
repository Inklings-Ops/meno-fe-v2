import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile_stats.dart';
import 'package:meno_fe_v2/modules/profile/infrastructure/dtos/profile_stats_dto.dart';

@lazySingleton
class ProfileStatsMapper {
  ProfileStats? toDomain(ProfileStatsDto? dto) {
    if (dto == null) return null;

    return ProfileStats(
      broadcasts: dto.broadcasts,
      subscribers: dto.subscribers,
      subscriptions: dto.subscriptions,
    );
  }
}
