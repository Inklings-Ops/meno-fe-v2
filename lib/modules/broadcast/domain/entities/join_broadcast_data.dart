import 'package:freezed_annotation/freezed_annotation.dart';

part 'join_broadcast_data.freezed.dart';

@freezed
class JoinBroadcastData with _$JoinBroadcastData {
  const factory JoinBroadcastData({String? agoraToken}) = _JoinBroadcastData;

  factory JoinBroadcastData.empty() => const JoinBroadcastData(
        agoraToken: null,
      );
}
