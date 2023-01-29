import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_listener.dart';

abstract class SocketData {
  List<Broadcast>? liveBroadcasts;
  List<BroadcastListener>? listeners;
  Broadcast? liveBroadcast;
  bool? loading;
  int? numberOfLiveBroadcasts;
  int? numberOfListeners;
  String? error;
  BroadcastListener? newListener;
  int? numberOfLiveListeners;

  SocketData({
    this.liveBroadcasts,
    this.listeners,
    this.liveBroadcast,
    this.loading,
    this.numberOfLiveBroadcasts,
    this.numberOfListeners,
    this.error,
    this.newListener,
    this.numberOfLiveListeners,
  });
}

class GetLiveBroadcastData extends SocketData {
  GetLiveBroadcastData({required super.liveBroadcast});
}

class GetLiveBroadcastsData extends SocketData {
  GetLiveBroadcastsData({required super.liveBroadcasts});
}

class GetBroadcastListenersData extends SocketData {
  GetBroadcastListenersData({required super.listeners});
}

class GetNumberOfLiveBroadcastsData extends SocketData {
  GetNumberOfLiveBroadcastsData({required super.numberOfLiveBroadcasts});
}

class GetNumberOfBroadcastListenersData extends SocketData {
  GetNumberOfBroadcastListenersData({required super.numberOfListeners});
}

class NewListenerData extends SocketData {
  NewListenerData({required super.newListener});
}

class NumberOfLiveBroadcastsData extends SocketData {
  NumberOfLiveBroadcastsData({required super.numberOfLiveBroadcasts});
}

class NumberOfLiveListenersData extends SocketData {
  NumberOfLiveListenersData({required super.numberOfLiveListeners});
}

class SocketError extends SocketData {
  SocketError({required super.error});
}
