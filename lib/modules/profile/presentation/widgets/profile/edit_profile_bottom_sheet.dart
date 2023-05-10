import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_close_button.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_image_source_bottom_sheet.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_text_form_field.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:meno_fe_v2/modules/profile/application/profile_form/profile_form_notifier.dart';

class EditProfileBottomSheet extends ConsumerWidget {
  const EditProfileBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final state = ref.watch(profileFormProvider);
    final event = ref.watch(profileFormProvider.notifier);
    final profileEvent = ref.watch(profileProvider.notifier);

    ref.listen<ProfileFormState>(profileFormProvider, (previous, next) {
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
            profileEvent.authProfileLoaded();
            AutoRouter.of(context).pop();
          },
        ),
      );
    });

    return Column(
      children: [
        const Align(
          alignment: Alignment.centerRight,
          child: MBottomSheetCloseButton(),
        ),
        Expanded(
          child: Container(
            padding: MSize.pAll(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(MSize.r(40)),
              ),
            ),
            child: Form(
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      'Edit Profile Details',
                      textAlign: TextAlign.center,
                      style: textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    MSize.vS(14),
                    GestureDetector(
                      onTap: () async {
                        await Future.delayed(Duration.zero);

                        if (context.mounted) {
                          await showModalBottomSheet(
                            context: context,
                            backgroundColor: Colors.transparent,
                            builder: (context) => MImageSourceBottomSheet(
                              fromGallery: () {
                                event.avatarChanged(true);
                                AutoRouter.of(context).pop();
                              },
                              fromCamera: () {
                                event.avatarChanged(false);
                                AutoRouter.of(context).pop();
                              },
                            ),
                          );
                        }
                      },
                      child: Center(
                        child: Stack(
                          children: [
                            CircleAvatar(
                              radius: MSize.r(60),
                              backgroundColor: Colors.black12,
                              foregroundImage: state.avatar?.get() != null
                                  ? FileImage(state.avatar!.get()!)
                                  : null,
                              backgroundImage: state.imageUrl != null
                                  ? NetworkImage(state.imageUrl!)
                                  : null,
                            ),
                            Container(
                              height: MSize.r(120),
                              width: MSize.r(120),
                              alignment: Alignment.center,
                              decoration: const BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black38,
                              ),
                              child: Text(
                                'Change?',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: MSize.fS(14),
                                  fontWeight: FontWeight.w500,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    MSize.vS(16),
                    MTextFormField(
                      label: 'Name',
                      hint: 'Enter your name',
                      isRequired: true,
                      initialValue: state.fullName.get(),
                      enabled: !state.loading,
                      onChanged: (p) => event.fullNameChanged(p),
                      validator: (_) => state.fullName.value.fold(
                        (f) => f.mapOrNull(
                          empty: (_) => 'Full Name field cannot be empty',
                        ),
                        (_) => null,
                      ),
                    ),
                    MSize.vS(12),
                    MTextFormField(
                      label: 'Description',
                      hint: 'Enter your description',
                      maxLength: 244,
                      maxLines: 4,
                      initialValue: state.bio?.get(),
                      onChanged: (p) => event.bioChanged(p),
                      validator: (_) => state.bio?.value.fold(
                        (f) => f.mapOrNull(
                          bioLengthExceeded: (_) =>
                              'You have exceeded the length of your profile bio',
                        ),
                        (_) => null,
                      ),
                    ),
                    MSize.vS(35),
                    MButton(
                      title: 'Save changes',
                      disabled: state.fullName.get() == null,
                      loading: state.loading,
                      onPressed: () async => await event.editSubmitted(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
