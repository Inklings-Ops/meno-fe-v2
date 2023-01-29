// ignore_for_file: library_prefixes, depend_on_referenced_packages

import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/core/env/env.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_listener.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_listener_mapper.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/datasources/mapper/broadcast_mapper.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/broadcast_dto.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/broadcast_listener_dto.dart';
import 'package:meno_fe_v2/services/socket/models.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:logger/logger.dart';

part 'socket.freezed.dart';
part 'socket_state.dart';

final socketProvider = Provider((ref) {
  ref.listen<AuthState>(authProvider, (previous, next) {
    next.whenOrNull(
      authenticated: (credentials) => SocketService(credentials.token),
    );
  });
});

class SocketService {
  final String? _token;
  late final IO.Socket? socket;
  final socketResponse = StreamController<SocketData>();

  final Logger _log = Logger();

  SocketService(this._token) {
    socket = IO.io(
      Env.menoApi,
      IO.OptionBuilder()
          .setTransports(['websocket'])
          .setQuery({'token': _token})
          .enableAutoConnect()
          .build(),
    );
    socket?.connect();
  }

  dynamic socketGlobalListeners() {
    socket?.on(MKeys.connect, onConnect);
    socket?.on(MKeys.disconnect, onDisconnect);
    socket?.on(MKeys.onSocketError, onSocketError);
    socket?.on(MKeys.newBroadcastListener, onNewBroadcastListener);
    socket?.on(MKeys.numberOfLiveBroadcasts, onNumberOfLiveBroadcasts);
    socket?.on(MKeys.numberOfLiveListeners, onNumberOfLiveListeners);
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
      ack: (_) => null,
    );
  }

  void endBroadcast(String broadcastId) {
    socket?.emitWithAck(
      MKeys.endBroadcast,
      {'broadcastId': broadcastId},
      ack: (data) => null,
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
        final b = BroadcastMapper().toDomain(dto);
        socketResponse.sink.add(GetLiveBroadcastData(liveBroadcast: b));
      },
    );
  }

  void getLiveBroadcasts() {
    socket?.emitWithAck(
      MKeys.getLiveBroadcast,
      {},
      ack: (data) {
        final decodedData = jsonDecode(jsonEncode(data))['data'];
      },
    );
  }

  // Listeners

  // Get This Event After Successful Connection To Socket
  dynamic onConnect(_) => _log.i('Socket Connected');

  // Get This Event After Successful Disconnection To Socket
  dynamic onDisconnect(_) => _log.i('Socket Disconnected');

  // Get This Event After Connection Error To Socket With Error
  dynamic onSocketError(error) {
    _log.e("Socket Error => $error");
    socketResponse.sink.add(SocketError(error: error));
  }

  // Subscribe to this event to get the name of a new Broadcast listener
  dynamic onNewBroadcastListener(dynamic data) {
    _log.i('New Broadcast Listener... => $data');
    final dto = BroadcastListenerDto.fromJson(data);
    final newListener = BroadcastListenerMapper().toDomain(dto);
    socketResponse.sink.add(NewListenerData(newListener: newListener));
  }

  // Subscribe to this event to automatically get the number
  // of live broadcasts when a broadcast ends or starts
  dynamic onNumberOfLiveBroadcasts(dynamic data) {
    _log.i('Number of Live Broadcasts... => $data');
    // getLiveBroadcasts();
    socketResponse.sink.add(NumberOfLiveBroadcastsData(
      numberOfLiveBroadcasts: data,
    ));
  }

  // Subscribe to this event on a room (broadcast) to be automatically
  // informed of the new number of listeners in a room when a listener
  // joins or leaves a room
  dynamic onNumberOfLiveListeners(dynamic data) {
    _log.i('Number of Live Listeners... => $data');
    socketResponse.sink.add(NumberOfLiveListenersData(
      numberOfLiveListeners: data,
    ));
  }
}
