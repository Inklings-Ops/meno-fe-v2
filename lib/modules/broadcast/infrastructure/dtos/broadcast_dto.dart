import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/creator_dto.dart';

part 'broadcast_dto.freezed.dart';
part 'broadcast_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class BroadcastDto with _$BroadcastDto {
  factory BroadcastDto({
    required String id,
    required String title,
    String? description,
    String? status,
    String? agoraToken,
    String? timezone,
    dynamic imageId,
    String? imageUrl,
    DateTime? startTime,
    dynamic endTime,
    DateTime? createdAt,
    dynamic deleted,
    String? creatorId,
    CreatorDto? creator,
    int? liveListeners,
    int? timeElapsed,
    int? totalListeners,
  }) = _BroadcastDto;

  factory BroadcastDto.fromDomain(Broadcast b) {
    return BroadcastDto(
      id: b.id,
      title: b.title.get()!,
      description: b.description?.get(),
      status: b.status,
      agoraToken: b.agoraToken,
      timezone: b.timezone,
      imageId: b.imageId,
      imageUrl: b.imageUrl,
      startTime: b.startTime,
      endTime: b.endTime,
      createdAt: b.createdAt,
      deleted: b.deleted,
      creatorId: b.creatorId,
      creator: CreatorDto(
        id: b.creator?.id,
        fullName: b.creator?.fullName,
        imageUrl: b.creator?.imageUrl,
      ),
      liveListeners: b.liveListeners,
      timeElapsed: b.timeElapsed,
    );
  }

  factory BroadcastDto.fromJson(Map<String, dynamic> json) =>
      _$BroadcastDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$BroadcastDtoToJson(this);
}
