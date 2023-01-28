import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/password_rules.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/password_rule_object.dart';
import 'package:meno_fe_v2/modules/auth/domain/errors/auth_failure.dart';
import 'package:meno_fe_v2/modules/auth/domain/i_auth_facade.dart';
import 'package:meno_fe_v2/services/media_service.dart';

part 'register_notifier.freezed.dart';
part 'register_state.dart';

final passwordRuleProvider = Provider((ref) {
  return PasswordRuleObject(passwordRules, false, MColors.grey);
});

final registerProvider =
    StateNotifierProvider.autoDispose<RegisterNotifier, RegisterState>((ref) {
  return RegisterNotifier(di<IAuthFacade>(), di<MediaService>());
});

class RegisterNotifier extends StateNotifier<RegisterState> {
  RegisterNotifier(
    this._facade,
    this._mediaService,
  ) : super(RegisterState.initial());

  final IAuthFacade _facade;
  final MediaService _mediaService;

  bool get isFormValid =>
      state.fullName.get() != null ||
      state.email.isValid() ||
      state.password.isValid();

  void fullNameChanged(String fullName) {
    state = state.copyWith(fullName: IFullName(fullName));
  }

  void emailChanged(String email) {
    state = state.copyWith(email: IEmail(email));
  }

  void passwordChanged(String password) {
    state = state.copyWith(
      password: IPassword(password),
      passwordController: TextEditingController(text: password),
    );
  }

  Future<void> avatarPicked(bool fromGallery) async {
    final file = await _mediaService.getImage(fromGallery: fromGallery);
    if (file != null) {
      state = state.copyWith(avatar: IAvatar(File(file.path)));
    }
  }

  Future<void> registerPressed() async {
    Either<AuthFailure, Unit> r;

    final isNameValid = state.fullName.isValid();
    final isEmailValid = state.email.isValid();
    final isPasswordValid = state.password.isValid();

    if (isNameValid && isEmailValid && isPasswordValid) {
      state = state.copyWith(loading: true);

      r = await _facade.register(
        fullName: state.fullName,
        email: state.email,
        password: state.password,
        avatar: state.avatar,
      );

      state = state.copyWith(loading: false, option: some(r));
    }

    state = state.copyWith(loading: false, showError: true, option: none());
  }
}
