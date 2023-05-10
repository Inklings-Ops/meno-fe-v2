import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_text_form_field.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast_form/broadcast_form_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/create_broadcast/create_broadcast_artwork.dart';

class CreateBroadcastForm extends ConsumerStatefulWidget {
  const CreateBroadcastForm({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateBroadcastFormState();
}

class _CreateBroadcastFormState extends ConsumerState<CreateBroadcastForm> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(broadcastFormProvider);
    final event = ref.watch(broadcastFormProvider.notifier);
    final broadcastEvent = ref.watch(broadcastProvider.notifier);

    ref.listen<BroadcastFormState>(broadcastFormProvider, (previous, next) {
      next.option.fold(
        () => null,
        (either) => either.fold(
          (failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(failure.maybeMap(
                  orElse: () => '',
                  message: (value) => value.message,
                  serverError: (_) => 'Server error',
                )),
              ),
            );
          },
          (success) {
            ScaffoldMessenger.of(context).clearSnackBars();
            broadcastEvent.initialized(success);
            AutoRouter.of(context).pushAndPopUntil(
              BroadcastRoute(broadcast: success),
              predicate: (_) => false,
            );
          },
        ),
      );
    });

    return Form(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MSize.vS(20),
          const CreateBroadcastArtwork(),
          MSize.vS(10),
          MTextFormField(
            label: "Title",
            hint: 'Enter your title',
            isRequired: true,
            enabled: !state.loading,
            onChanged: (p) => event.titleChanged(p),
            validator: (_) => state.title.value.fold(
              (f) => f.mapOrNull(
                empty: (_) => 'Title field cannot be empty',
              ),
              (_) => null,
            ),
          ),
          MSize.vS(20),
          MTextFormField(
            label: "Description",
            hint: 'Enter your description',
            isRequired: true,
            maxLength: 250,
            maxLines: 4,
            enabled: !state.loading,
            onChanged: (p) => event.descriptionChanged(p),
            validator: (_) => state.description.value.fold(
              (f) => f.mapOrNull(
                empty: (_) => 'Title field cannot be empty',
                descLengthExceeded: (_) =>
                    'Oops. You\'ve exceeded the description length.',
              ),
              (_) => null,
            ),
          ),
          // MSize.vS(10),
          // const AddCohostButton(),
          MSize.vS(30),
          MButton(
            title: 'Create Broadcast',
            onPressed: () => event.createPressed(),
            disabled: !state.title.isValid() || !state.description.isValid(),
            loading: state.loading,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    ref.invalidate(broadcastFormProvider);
    super.dispose();
  }
}
