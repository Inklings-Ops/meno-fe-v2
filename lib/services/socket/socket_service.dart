// ignore_for_file: library_prefixes, depend_on_referenced_packages

import 'dart:async';
import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/creator_dto.dart';
import 'package:meno_fe_v2/modules/profile/domain/i_profile_facade.dart';
import 'package:meno_fe_v2/services/socket/models.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:logger/logger.dart';

part 'socket_service.freezed.dart';
part 'socket_state.dart';

final socketProvider = Provider<SocketService>((ref) {
  final state = ref.watch(authProvider);
  return state.maybeWhen(
    orElse: () => SocketService(null),
    authenticated: (credentials) => SocketService(credentials.token),
  );
});

class SocketService {
  final String? _token;
  late final IO.Socket? socket;
  final socketResponse = StreamController<SocketData>();

  final Logger _log = Logger();

  SocketService(this._token) {
    init();
  }

  dynamic init() {
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
      MKeys.getLiveBroadcasts,
      {},
      ack: (data) async {
        final res = (jsonDecode(jsonEncode(data))['data']);
        if (res != null) {
          final dtos =
              (res as List).map((b) => BroadcastDto.fromJson(b)).toList();
          final liveBroadcasts = await Future.wait(dtos.map((dto) async {
            final creator = await di<IProfileFacade>().getProfile(
              id: dto.creatorId!,
            );
            final updateDto = dto.copyWith(
              status: 'active',
              creator: CreatorDto(
                id: creator?.id,
                fullName: creator?.fullName.get(),
                imageUrl: creator?.imageUrl,
              ),
            );
            return BroadcastMapper().toDomain(updateDto);
          }));
          socketResponse.sink.add(
            GetLiveBroadcastsData(liveBroadcasts: liveBroadcasts),
          );
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
        socketResponse.sink.add(GetNumberOfBroadcastListenersData(
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
        socketResponse.sink.add(GetNumberOfLiveBroadcastsData(
          numberOfLiveBroadcasts: decodedData,
        ));
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
    _log.i('Number of Live Broadcasts... => ${jsonDecode(jsonEncode(data))}');
    // getLiveBroadcasts();
    socketResponse.sink.add(NumberOfLiveBroadcastsData(
      numberOfLiveBroadcasts: jsonDecode(jsonEncode(data)),
    ));
  }

  // Subscribe to this event on a room (broadcast) to be automatically
  // informed of the new number of listeners in a room when a listener
  // joins or leaves a room
  dynamic onNumberOfLiveListeners(dynamic data) {
    _log.i('Number of Live Listeners... => $data');
    final decodedData = jsonDecode(jsonEncode(data));
    socketResponse.sink.add(NumberOfLiveListenersData(
      numberOfLiveListeners: decodedData,
    ));
  }

  dynamic onNewBroadcast(dynamic data) async {
    _log.i('New broadcast... => $data');
    final decodedData = jsonDecode(jsonEncode(data));
    final dto = BroadcastDto.fromJson(decodedData);
    final creator = await di<IProfileFacade>().getProfile(id: dto.creatorId!);
    final updateDto = dto.copyWith(
      status: 'active',
      creator: CreatorDto(
        id: creator?.id,
        fullName: creator?.fullName.get(),
        imageUrl: creator?.imageUrl,
      ),
    );
    final b = BroadcastMapper().toDomain(updateDto);
    socketResponse.sink.add(NewBroadcastData(newBroadcast: b));
  }

  dynamic onEndedBroadcast(dynamic data) {
    _log.i('Ended broadcast... => $data');
    socketResponse.sink.add(EndedBroadcastData(endedBroadcast: null));
  }
}
