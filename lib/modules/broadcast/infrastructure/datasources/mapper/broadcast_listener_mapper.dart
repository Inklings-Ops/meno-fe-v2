import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_listener.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/broadcast_listener_dto.dart';

@singleton
class BroadcastListenerMapper {
  BroadcastListener? toDomain(BroadcastListenerDto? dto) {
    if (dto == null) return null;

    return BroadcastListener(id: dto.id, fullName: dto.fullName);
  }
}
