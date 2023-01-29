import 'package:freezed_annotation/freezed_annotation.dart';

part 'broadcast_listener.freezed.dart';

@freezed
class BroadcastListener with _$BroadcastListener {
  const factory BroadcastListener({
    required String id,
    required String fullName,
  }) = _BroadcastListener;

  factory BroadcastListener.empty() {
    return const BroadcastListener(id: '', fullName: '');
  }
}
