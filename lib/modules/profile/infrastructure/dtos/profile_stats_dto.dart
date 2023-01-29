import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile_stats.dart';

part 'profile_stats_dto.freezed.dart';
part 'profile_stats_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class ProfileStatsDto with _$ProfileStatsDto {
  factory ProfileStatsDto({
    required int subscribers,
    required int subscriptions,
    required int broadcasts,
  }) = _ProfileStatsDto;

  factory ProfileStatsDto.fromDomain(ProfileStats stats) {
    return ProfileStatsDto(
      broadcasts: stats.broadcasts,
      subscribers: stats.subscribers,
      subscriptions: stats.subscriptions,
    );
  }

  factory ProfileStatsDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileStatsDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$ProfileStatsDtoToJson(this);
}
