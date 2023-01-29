part of 'profile_notifier.dart';

@freezed
class ProfileState with _$ProfileState {
  const factory ProfileState.loading() = _ProfileLoading;
  const factory ProfileState.authUserLoaded(Profile profile) = AuthUserProfileLoaded;
  const factory ProfileState.otherUserLoaded(Profile profile) = OtherUserProfileLoaded;
  const factory ProfileState.failed() = _ProfileFailed;
}
