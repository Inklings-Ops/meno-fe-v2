import 'package:freezed_annotation/freezed_annotation.dart' hide JsonKey;
import 'package:json_annotation/json_annotation.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';
import 'package:meno_fe_v2/modules/profile/infrastructure/dtos/profile_stats_dto.dart';

part 'profile_dto.freezed.dart';
part 'profile_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class ProfileDto with _$ProfileDto {
  factory ProfileDto({
    required String id,
    required String fullName,
    String? bio,
    String? imageUrl,
    // ignore: invalid_annotation_target
    @JsonKey(name: '_count') ProfileStatsDto? count,
    bool? isSubscribedToUser,
  }) = _ProfileDto;

  factory ProfileDto.fromDomain(Profile p) {
    return ProfileDto(
      id: p.id,
      fullName: p.fullName.get()!,
      bio: p.bio?.get(),
      imageUrl: p.imageUrl,
      count: p.count != null ? ProfileStatsDto.fromDomain(p.count!) : null,
      isSubscribedToUser: p.isSubscribedToUser,
    );
  }

  factory ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$ProfileDtoFromJson(json);

  @override
  Map<String, dynamic> toJson() => _$ProfileDtoToJson(this);
}
