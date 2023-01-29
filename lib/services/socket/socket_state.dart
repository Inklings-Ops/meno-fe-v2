part of 'socket.dart';

@freezed
class SocketState with _$SocketState {
  factory SocketState({
    List<Broadcast>? liveBroadcasts,
    List<BroadcastListener>? listeners,
    BroadcastListener? newListener,
    Broadcast? liveBroadcast,
    bool? loading,
    int? numberOfLiveBroadcasts,
    int? numberOfListeners,
    int? numberOfLiveListeners,
    String? error,
  }) = _SocketState;
}
