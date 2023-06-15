// ignore_for_file: library_prefixes, depend_on_referenced_packages

import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logger/logger.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/core/env/env.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_listener.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_listener_mapper.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_mapper.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/broadcast_dto.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/broadcast_listener_dto.dart';
import 'package:meno_fe_v2/modules/profile/domain/i_profile_facade.dart';
import 'package:meno_fe_v2/services/socket/models.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;

part 'socket_service.freezed.dart';
part 'socket_state.dart';

final socketProvider = Provider<SocketService>((ref) {
  final state = ref.watch(authProvider);
  return state.maybeWhen(
    orElse: () => SocketService(null),
    adminAuth: (credentials) => SocketService(credentials.token),
  );
});

class SocketService {
  final String? _token;
  late final IO.Socket? socket;
  final socketResponse = StreamController<SocketData>();
  StreamSink<SocketData> get sink => socketResponse.sink;

  final Logger _log = Logger();

  final _mapper = BroadcastMapper();

  SocketService(this._token) {
    init();
  }

  void init() {
    socket = IO.io(
      Env.menoApi,
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .setQuery({'token': _token})
          .enableAutoConnect()
          .build(),
    );
    socket?.connect();
    socketGlobalListeners();
  }

  dynamic socketGlobalListeners() {
    socket?.on(MKeys.connect, onConnect);
    socket?.on(MKeys.disconnect, onDisconnect);
    socket?.on(MKeys.onSocketError, onSocketError);
    socket?.on(MKeys.newBroadcastListener, onNewBroadcastListener);
    socket?.on(MKeys.numberOfLiveBroadcasts, onNumberOfLiveBroadcasts);
    socket?.on(MKeys.numberOfLiveListeners, onNumberOfLiveListeners);
    socket?.on(MKeys.newBroadcast, onNewBroadcast);
    socket?.on(MKeys.endedBroadcast, onEndedBroadcast);
  }

  // Emits
  void joinBroadcast({required String broadcastId, required String fullName}) {
    socket?.emitWithAck(
      MKeys.joinBroadcast,
      {"broadcastId": broadcastId, "fullName": fullName},
      ack: (data) => null,
    );
  }

  void startedBroadcast(String broadcastId) {
    socket?.emitWithAck(
      MKeys.startedBroadcast,
      {"broadcastId": broadcastId},
      ack: (_) => sink.add(
        IsLiveData(isLive: true, liveBroadcastId: broadcastId),
      ),
    );
  }

  void endBroadcast(String broadcastId) {
    socket?.emitWithAck(
      MKeys.endBroadcast,
      {'broadcastId': broadcastId},
      ack: (_) => sink.add(IsLiveData(isLive: false, liveBroadcastId: null)),
    );
  }

  void leaveBroadcast(String broadcastId) {
    socket?.emitWithAck(
      MKeys.leaveBroadcast,
      {"broadcastId": broadcastId},
      ack: (data) {},
    );
  }

  void getLiveBroadcast(String broadcastId) {
    socket?.emitWithAck(
      MKeys.getLiveBroadcast,
      {"broadcastId": broadcastId},
      ack: (data) {
        final dto = BroadcastDto.fromJson(data);
        final b = _mapper.toDomain(dto);
        sink.add(GetLiveBroadcastData(liveBroadcast: b));
      },
    );
  }

  void getLiveBroadcasts() {
    socket?.emitWithAck(
      MKeys.getLiveBroadcasts,
      {},
      ack: (data) async {
        final res = (jsonDecode(jsonEncode(data))['data']);
        if (res != null) {
          final list = (res as List);
          final dtos = list.map((b) => BroadcastDto.fromJson(b)).toList();
          final broadcasts = dtos.map((e) => _mapper.toDomain(e)).toList();
          sink.add(GetLiveBroadcastsData(liveBroadcasts: broadcasts));
        }
      },
    );
  }

  void getBroadcastListeners(String? broadcastId) {
    if (broadcastId == null) return;
    socket?.emitWithAck(
      MKeys.getBroadcastListeners,
      {"broadcastId": broadcastId},
      ack: (data) async {
        final res = jsonDecode(jsonEncode(data))['data'];
        if (res != null) {
          final dtos = (res as List)
              .map((b) => BroadcastListenerDto.fromJson(b))
              .toList();
          final liveBroadcasts = await Future.wait(dtos.map((dto) async {
            final creator = await di<IProfileFacade>().getProfile(id: dto.id);
            final updateDto = dto.copyWith(imageUrl: creator?.imageUrl);
            return BroadcastListenerMapper().toDomain(updateDto);
          }));
          sink.add(GetBroadcastListenersData(listeners: liveBroadcasts));
        }
      },
    );
  }

  void getNumberOfBroadcastListeners(String broadcastId) {
    socket?.emitWithAck(
      MKeys.getNumberOfBroadcastListeners,
      {"broadcastId": broadcastId},
      ack: (data) {
        final decodedData = jsonDecode(jsonEncode(data))['data'];
        sink.add(GetNumberOfBroadcastListenersData(
          numberOfLiveListeners: decodedData,
        ));
      },
    );
  }

  void getNumberOfLiveBroadcast() {
    socket?.emitWithAck(
      MKeys.getNumberOfLiveBroadcasts,
      {},
      ack: (data) {
        final decodedData = jsonDecode(jsonEncode(data))['data'];
        sink.add(GetNumberOfLiveBroadcastsData(
          numberOfLiveBroadcasts: decodedData,
        ));
      },
    );
  }

  // Listeners
  //
  // Get This Event After Successful Connection To Socket
  dynamic onConnect(_) {
    _log.i('Socket Connected');
  }

  // Get This Event After Successful Disconnection To Socket
  dynamic onDisconnect(_) => _log.i('Socket Disconnected');

  // Get This Event After Connection Error To Socket With Error
  dynamic onSocketError(error) {
    _log.e("Socket Error => $error");
    sink.add(SocketError(error: error));
  }

  // Subscribe to this event to get the name of a new Broadcast listener
  dynamic onNewBroadcastListener(dynamic data) {
    _log.i('New Broadcast Listener... => $data');
    final dto = BroadcastListenerDto.fromJson(data);
    sink.add(NewBroadcastListenerData(
      newBroadcastListener: BroadcastListener(
        id: dto.id,
        fullName: dto.fullName,
        imageUrl: dto.imageUrl,
      ),
    ));
  }

  // Subscribe to this event to automatically get the number
  // of live broadcasts when a broadcast ends or starts
  dynamic onNumberOfLiveBroadcasts(dynamic data) {
    _log.i('Number of Live Broadcasts... => $data');
    _log.i('Number of Live Broadcasts... => ${jsonDecode(jsonEncode(data))}');
    // getLiveBroadcasts();
    sink.add(NumberOfLiveBroadcastsData(
      numberOfLiveBroadcasts: jsonDecode(jsonEncode(data)),
    ));
  }

  // Subscribe to this event on a room (broadcast) to be automatically
  // informed of the new number of listeners in a room when a listener
  // joins or leaves a room
  dynamic onNumberOfLiveListeners(dynamic data) {
    _log.i('Number of Live Listeners... => $data');
    final decodedData = jsonDecode(jsonEncode(data));
    sink.add(NumberOfLiveListenersData(numberOfLiveListeners: decodedData));
  }

  dynamic onNewBroadcast(dynamic data) async {
    _log.i('New broadcast... => $data');
    final decodedData = jsonDecode(jsonEncode(data));
    final dto = BroadcastDto.fromJson(decodedData);
    final b = _mapper.toDomain(dto);
    sink.add(NewBroadcastData(newBroadcast: b));
  }

  dynamic onEndedBroadcast(dynamic data) {
    _log.i('Ended broadcast... => $data');
    sink.add(EndedBroadcastData(endedBroadcast: null));
  }
}
