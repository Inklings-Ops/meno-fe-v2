import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/creator.dart';

part 'broadcast.freezed.dart';

@freezed
class Broadcast with _$Broadcast {
  const factory Broadcast({
    required String id,
    required IBroadcastTitle title,
    IBroadcastDescription? description,
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
    Creator? creator,
    int? liveListeners,
    int? timeElapsed,
  }) = _Broadcast;

  factory Broadcast.empty() => Broadcast(id: '', title: IBroadcastTitle(''));
}
