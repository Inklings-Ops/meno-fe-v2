import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/creator_mapper.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/broadcast_dto.dart';

@singleton
class BroadcastMapper {
  Broadcast? toDomain(BroadcastDto? dto) {
    if (dto == null) return null;

    return Broadcast(
      id: dto.id,
      title: IBroadcastTitle(dto.title),
      description: dto.description != null
          ? IBroadcastDescription(dto.description!)
          : null,
      agoraToken: dto.agoraToken,
      createdAt: dto.createdAt,
      creator: CreatorMapper().toDomain(dto.creator),
      creatorId: dto.creatorId,
      deleted: dto.deleted,
      endTime: dto.endTime,
      imageId: dto.imageId,
      imageUrl: dto.imageUrl,
      liveListeners: dto.liveListeners,
      startTime: dto.startTime,
      status: dto.status,
      timezone: dto.timezone,
      timeElapsed: dto.timeElapsed,
    );
  }
}
