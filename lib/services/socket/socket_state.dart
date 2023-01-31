part of 'socket_service.dart';

@freezed
class SocketState with _$SocketState {
  factory SocketState({
    List<Broadcast?>? liveBroadcasts,
    List<BroadcastListener?>? listeners,
    required bool loading,
    int? numberOfLiveListeners,
    int? numberOfLiveBroadcasts,
    int? numberOfListeners,
    BroadcastListener? newListener,
    Broadcast? liveBroadcast,
    required bool isLive,
    String? error,
  }) = _SocketState;

  
}
