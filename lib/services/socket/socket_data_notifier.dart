import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/services/socket/models.dart';
import 'package:meno_fe_v2/services/socket/socket_service.dart';
// import 'package:logger/logger.dart';

final socketDataProvider =
    StateNotifierProvider<SocketDataNotifier, SocketState>(
  (ref) => SocketDataNotifier(ref),
);

final socketService = StreamProvider((ref) {
  final ss = ref.read(socketProvider);
  return ss.socketResponse.stream;
});

class SocketDataNotifier extends StateNotifier<SocketState> {
  final StateNotifierProviderRef _ref;
  SocketDataNotifier(this._ref) : super(SocketState(loading: true)) {
    _ref.listen(socketService, (_, AsyncValue<SocketData> data) {
      var socketData = data.value;

      switch (socketData.runtimeType) {
        case NumberOfLiveListenersData:
          state = state.copyWith(
            numberOfLiveListeners: socketData?.numberOfLiveListeners,
          );
          break;
        case NewBroadcastData:
          updateLiveBroadcasts();
          break;
        case EndedBroadcastData:
          updateLiveBroadcasts();
          break;
        case GetNumberOfBroadcastListenersData:
          state = state.copyWith(
            numberOfLiveListeners: socketData?.numberOfLiveListeners,
          );
          break;
        case GetLiveBroadcastsData:
          state = state.copyWith(
            liveBroadcasts: socketData!.liveBroadcasts,
          );
          break;
        case GetNumberOfLiveBroadcastsData:
          state = state.copyWith(
            numberOfLiveBroadcasts: socketData?.numberOfLiveBroadcasts,
          );
          break;
        default:
          state = state.copyWith(loading: false);
          break;
      }
    });
  }

  SocketService get _socket => _ref.read(socketProvider);

  void initializeSocket() async {
    state = state.copyWith(loading: true);
    _socket.init();
    _socket.socketGlobalListeners();
    _socket.getLiveBroadcasts();
    state = state.copyWith(loading: false);
  }

  void getNumberOfListeners(String broadcastId) async {
    state = state.copyWith(loading: true);
    _socket.getNumberOfBroadcastListeners(broadcastId);
    state = state.copyWith(loading: false);
  }

  void joinBroadcast({required String broadcastId, required String fullName}) {
    state = state.copyWith(loading: true);
    _socket.joinBroadcast(broadcastId: broadcastId, fullName: fullName);
    state = state.copyWith(loading: false);
  }

  void leaveBroadcast(String broadcastId) {
    state = state.copyWith(loading: true);
    _socket.leaveBroadcast(broadcastId);
    state = state.copyWith(loading: false);
  }

  void getNumberOfLiveBroadcasts() async {
    state = state.copyWith(loading: true);
    _socket.getNumberOfLiveBroadcast();
    state = state.copyWith(loading: false);
  }

  void getLiveBroadcasts() async {
    state = state.copyWith(loading: true);
    _socket.getLiveBroadcasts();
    state = state.copyWith(loading: false);
  }

  void updateLiveBroadcasts() async {
    _socket.getLiveBroadcasts();
    state = state.copyWith(loading: false);
  }
}