import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/di/injection.dart';

import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';
import 'package:meno_fe_v2/modules/profile/domain/errors/profile_failure.dart';
import 'package:meno_fe_v2/modules/profile/domain/i_profile_facade.dart';
import 'package:meno_fe_v2/services/media_service.dart';

part 'profile_form_notifier.freezed.dart';
part 'profile_form_state.dart';

final profileFormProvider =
    StateNotifierProvider.autoDispose<ProfileFormNotifier, ProfileFormState>(
  (ref) => ProfileFormNotifier(di<IProfileFacade>(), di<MediaService>()),
);

class ProfileFormNotifier extends StateNotifier<ProfileFormState> {
  final Profile? profile;
  final IProfileFacade _facade;
  final MediaService _mediaService;

  ProfileFormNotifier(
    this._facade,
    this._mediaService, {
    this.profile,
  }) : super(ProfileFormState.initial());

  Future<void> avatarChanged(bool fromGallery) async {
    final file = await _mediaService.getImage(fromGallery: fromGallery);
    if (file != null) {
      state = state.copyWith(
        avatar: IAvatar(File(file.path)),
        option: none(),
      );
    }
  }

  void bioChanged(String bio) async {
    state = state.copyWith(bio: IBio(bio), option: none());
  }

  Future<void> editSubmitted() async {
    Either<ProfileFailure, Unit> r;

    final isFullNameValid = state.fullName.isValid();

    if (isFullNameValid) {
      state = state.copyWith(loading: true, option: none());

      r = await _facade.editProfile(
        fullName: state.fullName,
        bio: state.bio,
        avatar: state.avatar,
      );

      state = state.copyWith(loading: false, option: some(r));
    }
  }

  void fullNameChanged(String fullName) async {
    state = state.copyWith(fullName: IFullName(fullName), option: none());
  }

  Future<void> init() async {
    final profile = await _facade.getAuthProfile();
    state = state.copyWith(
      bio: profile?.bio,
      fullName: profile!.fullName,
      loading: false,
      imageUrl: profile.imageUrl,
      option: none(),
      avatar: null,
    );
  }
}
