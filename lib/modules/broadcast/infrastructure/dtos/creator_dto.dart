import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/creator.dart';

part 'creator_dto.freezed.dart';
part 'creator_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class CreatorDto with _$CreatorDto {
  factory CreatorDto({
    String? id,
    String? fullName,
    String? imageUrl,
  }) = _CreatorDto;

  factory CreatorDto.fromDomain(Creator c) {
    return CreatorDto(
      id: c.id,
      fullName: c.fullName,
      imageUrl: c.imageUrl,
    );
  }

  factory CreatorDto.fromJson(Map<String, dynamic> json) =>
      _$CreatorDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$CreatorDtoToJson(this);
}
