part of 'broadcast_form_notifier.dart';

@freezed
class BroadcastFormState with _$BroadcastFormState {
  const factory BroadcastFormState({
    required IBroadcastTitle title,
    required IBroadcastDescription description,
    String? timezone,
    List<String>? cohosts,
    File? artwork,
    required bool showError,
    required bool loading,
    required Option<Either<BroadcastFailure, Broadcast>> option,
  }) = _BroadcastFormState;

  factory BroadcastFormState.initial() => BroadcastFormState(
        title: IBroadcastTitle(''),
        description: IBroadcastDescription(''),
        timezone: '',
        cohosts: null,
        artwork: null,
        showError: false,
        loading: false,
        option: none(),
      );
}
