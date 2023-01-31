part of 'broadcast_notifier.dart';

@freezed
class BroadcastState with _$BroadcastState {
  const factory BroadcastState({
    required List<Broadcast?> currentUserBroadcasts,
    required Broadcast broadcast,
    required BroadcastStatus status,
    required bool isAudioMute,
    required User authUser,
    String? agoraToken,
    required bool showError,
    required bool loading,
    required Option<Either<BroadcastFailure, String>> joinedOption,
    required Option<Either<BroadcastFailure, Broadcast>> startedOption,
    required Option<Either<BroadcastFailure, Unit>> leaveOption,
    required Option<Either<BroadcastFailure, Unit>> deleteOption,
  }) = _BroadcastState;

  factory BroadcastState.initial() => BroadcastState(
        currentUserBroadcasts: [],
        broadcast: Broadcast.empty(),
        status: BroadcastStatus.offAir,
        isAudioMute: false,
        authUser: User.empty(),
        agoraToken: '',
        showError: false,
        loading: false,
        joinedOption: none(),
        startedOption: none(),
        leaveOption: none(),
        deleteOption: none(),
      );
}
