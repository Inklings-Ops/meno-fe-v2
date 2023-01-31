import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_status.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/errors/broadcast_failure.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/i_broadcast_facade.dart';

part 'broadcast_notifier.freezed.dart';
part 'broadcast_state.dart';

final broadcastProvider =
    StateNotifierProvider<BroadcastNotifier, BroadcastState>(
  (ref) => BroadcastNotifier(di<IBroadcastFacade>()),
);

@injectable
class BroadcastNotifier extends StateNotifier<BroadcastState> {
  BroadcastNotifier(this._facade) : super(BroadcastState.initial());
  final IBroadcastFacade _facade;

  void initialized(Broadcast broadcast) async {
    state = state.copyWith(broadcast: broadcast);
  }

  Future<void> joinPressed({
    required Broadcast broadcast,
    required BuildContext context,
  }) async {
    state = state.copyWith(loading: true, joinedOption: none());

    Either<BroadcastFailure, String> r;

    r = await _facade.joinBroadcast(broadcastId: broadcast.id);
    final credentials = await _facade.getUserCredentials();

    r.fold(
      (l) => ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          margin: MSize.pFromLTRB(18, 0, 18, 130),
          content: Text(l.maybeMap(
            orElse: () => '',
            message: (value) => value.message,
            serverError: (_) => 'Server error',
          )),
        ),
      ),
      (agoraToken) {
        state = state.copyWith(
          broadcast: broadcast,
          loading: false,
          agoraToken: agoraToken,
          authUser: credentials.user!,
          showError: false,
          joinedOption: some(r),
        );
      },
    );
  }

  Future<void> deletePressed(String broadcastId) async {
    state = state.copyWith(loading: true, deleteOption: none());

    Either<BroadcastFailure, Unit> r;

    r = await _facade.deleteBroadcast(broadcastId: broadcastId);

    state = state.copyWith(
      loading: false,
      showError: false,
      deleteOption: some(r),
    );
  }

  Future<void> startPressed(String broadcastId) async {
    state = state.copyWith(loading: true, startedOption: none());

    Either<BroadcastFailure, Broadcast> r;

    final credentials = await _facade.getUserCredentials();
    r = await _facade.startBroadcast(broadcastId: broadcastId);

    r.fold(
      (l) => null,
      (broadcast) {
        state = state.copyWith(
          broadcast: broadcast,
          showError: false,
          loading: false,
          authUser: credentials.user!,
          startedOption: some(r),
        );
      },
    );
  }

  Future<void> endPressed(String broadcastId) async {
    // Todo add dialogue box
    await _facade.endBroadcast(broadcastId: broadcastId);
  }

  void mutePressed() {
    state = state.copyWith(isAudioMute: !state.isAudioMute);
  }
}
