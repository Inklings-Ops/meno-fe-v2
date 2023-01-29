part of 'profile_form_notifier.dart';

@freezed
class ProfileFormState with _$ProfileFormState {
  factory ProfileFormState({
    required IFullName fullName,
    required IBio? bio,
    required IAvatar? avatar,
    required String? imageUrl,
    required bool showError,
    required bool loading,
    required Option<Either<ProfileFailure, Unit>> option,
  }) = _ProfileFormState;

  factory ProfileFormState.initial() => ProfileFormState(
        fullName:  IFullName(''),
        bio:  IBio('') ,
        avatar:  IAvatar(null),
        imageUrl: null,
        showError: false,
        loading: false,
        option: none(),
      );
}
