import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';

part 'join_broadcast_data.freezed.dart';

@freezed
class JoinBroadcastData with _$JoinBroadcastData {
  const factory JoinBroadcastData({
    required Broadcast broadcast,
    required String broadcastToken,
  }) = _JoinBroadcastData;

  factory JoinBroadcastData.empty() => JoinBroadcastData(
        broadcast: Broadcast.empty(),
        broadcastToken: "",
      );
}
