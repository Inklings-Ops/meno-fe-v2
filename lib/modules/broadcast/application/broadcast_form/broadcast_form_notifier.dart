import 'dart:io';

import 'package:dartz/dartz.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/errors/broadcast_failure.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/i_broadcast_facade.dart';
import 'package:meno_fe_v2/services/media_service.dart';

part 'broadcast_form_notifier.freezed.dart';
part 'broadcast_form_state.dart';

final broadcastFormProvider =
    StateNotifierProvider<BroadcastFormNotifier, BroadcastFormState>((ref) {
  return BroadcastFormNotifier(di<IBroadcastFacade>(), di<MediaService>());
});

@injectable
class BroadcastFormNotifier extends StateNotifier<BroadcastFormState> {
  final IBroadcastFacade _facade;
  final MediaService _mediaService;

  BroadcastFormNotifier(
    this._facade,
    this._mediaService,
  ) : super(BroadcastFormState.initial());

  void titleChanged(String title) {
    state = state.copyWith(title: IBroadcastTitle(title),loading:false, option: none(),);
  }

  void descriptionChanged(String description) {
    state = state.copyWith(
      description: IBroadcastDescription(description),
      loading:false,
      option: none(),
    );
  }

  Future<void> artworkChanged(bool fromGallery) async {
    final file = await _mediaService.getImage(fromGallery: fromGallery);
    if (file != null) {
      state = state.copyWith(artwork: File(file.path), loading:false, option: none(),);
    }
  }

  void cohostsAdded(e) {}
  Future<void> createPressed() async {
    Either<BroadcastFailure, Broadcast> r;

    final isTitleValid = state.title.isValid();
    final isDescriptionValid = state.description.isValid();

    if (isTitleValid && isDescriptionValid) {
      state = state.copyWith(loading: true, option: none());

      r = await _facade.createBroadcast(
        title: state.title,
        description: state.description,
        artwork: state.artwork,
        cohosts: state.cohosts,
        timezone: 'Africa/Abidjan',
      );

      state = state.copyWith(
        loading: false,
        showError: false,
        option: some(r),
      );
    }

    state = state.copyWith(loading: false, showError: true, option: none());
  }
}
