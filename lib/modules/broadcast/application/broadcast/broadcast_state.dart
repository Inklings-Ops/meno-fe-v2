part of 'broadcast_notifier.dart';

@freezed
class BroadcastState with _$BroadcastState {
  const factory BroadcastState({
    required List<Broadcast?>? currentUserBroadcasts,
    required Broadcast broadcast,
    required JoinBroadcastData joinedBroadcast,
    required BroadcastStatus status,
    required bool isAudioMute,
    required User authUser,
    String? broadcastToken,
    required bool showError,
    required bool loading,
    required Option<Either<BroadcastFailure, JoinBroadcastData>> joinedOption,
    required Option<Either<BroadcastFailure, Broadcast>> startedOption,
    required Option<Either<BroadcastFailure, Unit>> leaveOption,
    required Option<Either<BroadcastFailure, Unit>> deleteOption,
  }) = _BroadcastState;

  factory BroadcastState.initial() => BroadcastState(
        currentUserBroadcasts: [],
        broadcast: Broadcast.empty(),
        joinedBroadcast: JoinBroadcastData.empty(),
        status: BroadcastStatus.offAir,
        isAudioMute: false,
        authUser: User.empty(),
        broadcastToken: '',
        showError: false,
        loading: false,
        joinedOption: none(),
        startedOption: none(),
        leaveOption: none(),
        deleteOption: none(),
      );
}
