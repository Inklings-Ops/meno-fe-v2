import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';
import 'package:meno_fe_v2/modules/profile/domain/i_profile_facade.dart';

part 'profile_notifier.freezed.dart';
part 'profile_state.dart';

final profileProvider = StateNotifierProvider<ProfileNotifier, ProfileState>(
  (ref) => ProfileNotifier(di<IProfileFacade>()),
);

class ProfileNotifier extends StateNotifier<ProfileState> {
  ProfileNotifier(this._facade) : super(const ProfileState.loading());
  final IProfileFacade _facade;

  Future<void> authProfileLoaded() async {
    state = const ProfileState.loading();
    final res = await _facade.authProfile();
    state = res.fold(
      () => state = const ProfileState.failed(),
      (profile) => state = ProfileState.authUserLoaded(profile!),
    );
  }

  Future<void> profileLoaded(String userId) async {
    state = const ProfileState.loading();
    final res = await _facade.profile(id: userId);
    state = res.fold(
      () => state = const ProfileState.failed(),
      (profile) => state = ProfileState.otherUserLoaded(profile!),
    );
  }
}
