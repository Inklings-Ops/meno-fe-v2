import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_listener.dart';

abstract class SocketData {
  List<Broadcast?>? liveBroadcasts;
  List<BroadcastListener?>? listeners;
  Broadcast? liveBroadcast;
  Broadcast? newBroadcast;
  Broadcast? endedBroadcast;
  bool? loading;
  int? numberOfLiveBroadcasts;
  int? numberOfListeners;
  String? error;
  BroadcastListener? newListener;
  String? newBroadcastListener;
  int? numberOfLiveListeners;
  bool isLive;

  SocketData({
    this.liveBroadcasts,
    this.listeners,
    this.liveBroadcast,
    this.newBroadcast,
    this.endedBroadcast,
    this.loading,
    this.numberOfLiveBroadcasts,
    this.numberOfListeners,
    this.error,
    this.newListener,
    this.newBroadcastListener,
    this.numberOfLiveListeners,
    this.isLive = false,
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
  GetNumberOfBroadcastListenersData({required super.numberOfLiveListeners});
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

class NewBroadcastData extends SocketData {
  NewBroadcastData({required super.newBroadcast});
}

class EndedBroadcastData extends SocketData {
  EndedBroadcastData({required super.endedBroadcast});
}

class NewBroadcastListener extends SocketData {
  NewBroadcastListener({required super.newBroadcastListener});
}

class IsLiveData extends SocketData {
  IsLiveData({required super.isLive});
}

class SocketError extends SocketData {
  SocketError({required super.error});
}
