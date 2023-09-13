import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/join_broadcast_data.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_mapper.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/join_broadcast_data_dto.dart';

@injectable
class JoinBroadcastDataMapper {
  JoinBroadcastData? toDomain(JoinBroadcastDataDto? dto) {
    if (dto == null) return null;

    return JoinBroadcastData(
      broadcast: BroadcastMapper().toDomain(dto.broadcast)!,
      broadcastToken: dto.broadcastToken,
    );
  }
}
