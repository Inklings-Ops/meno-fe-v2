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
import 'package:meno_fe_v2/modules/broadcast/domain/entities/join_broadcast_data.dart';
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
    required String broadcastId,
    required BuildContext context,
  }) async {
    state = state.copyWith(
      loading: true,
      joinedOption: none(),
      startedOption: none(),
      deleteOption: none(),
      leaveOption: none(),
    );

    Either<BroadcastFailure, JoinBroadcastData> r;

    r = await _facade.joinBroadcast(broadcastId: broadcastId);
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
      (success) {
        state = state.copyWith(
          broadcast: success.broadcast,
          joinedBroadcast: success,
          loading: false,
          authUser: credentials.user!,
          showError: false,
          joinedOption: some(r),
          startedOption: none(),
          deleteOption: none(),
          leaveOption: none(),
        );
      },
    );
  }

  Future<void> deletePressed(String broadcastId) async {
    state = state.copyWith(
      loading: true,
      deleteOption: none(),
      startedOption: none(),
      joinedOption: none(),
      leaveOption: none(),
    );

    Either<BroadcastFailure, Unit> r;

    r = await _facade.deleteBroadcast(broadcastId: broadcastId);

    state = state.copyWith(
      loading: false,
      showError: false,
      deleteOption: some(r),
      startedOption: none(),
      joinedOption: none(),
      leaveOption: none(),
    );
  }

  Future<void> startPressed(String broadcastId) async {
    state = state.copyWith(
      loading: true,
      startedOption: none(),
      deleteOption: none(),
      joinedOption: none(),
      leaveOption: none(),
    );

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
          deleteOption: none(),
          joinedOption: none(),
          leaveOption: none(),
        );
      },
    );
  }

  Future<void> endPressed(String broadcastId) async {
    await _facade.endBroadcast(broadcastId: broadcastId);
  }

  void mutePressed() {
    state = state.copyWith(
      isAudioMute: !state.isAudioMute,
      startedOption: none(),
      deleteOption: none(),
      joinedOption: none(),
      leaveOption: none(),
    );
  }

  Future<void> getCurrentUserBroadcasts() async {
    state = state.copyWith(
      loading: true,
      startedOption: none(),
      deleteOption: none(),
      joinedOption: none(),
      leaveOption: none(),
    );

    // final res = await _facade.getCurrentUserBroadcasts();
    final credentials = await _facade.getUserCredentials();
    final id = credentials.user!.id;
    final res = await _facade.getBroadcastsByUser(creatorId: id);

    res.fold(
      (l) => null,
      (broadcasts) {
        state = state.copyWith(
          currentUserBroadcasts: broadcasts,
          loading: false,
          startedOption: none(),
          deleteOption: none(),
          joinedOption: none(),
          leaveOption: none(),
        );
      },
    );
  }
}
