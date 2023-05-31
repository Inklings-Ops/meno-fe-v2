import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/profile/application/profile_form/profile_form_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/edit_profile_bottom_sheet.dart';

Future<void> showEditBottomSheet(BuildContext context, WidgetRef ref) async {
  final profileFormEvent = ref.watch(profileFormProvider.notifier);
  final bottom = MediaQuery.of(context).viewInsets.bottom;

  await profileFormEvent.init().whenComplete(() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.white,
      elevation: 0,
      showDragHandle: true,
      useSafeArea: true,
      builder: (context) => Padding(
        padding: EdgeInsets.only(bottom: bottom),
        child: const EditProfileBottomSheet(),
      ),
    );
  });
}

class EditProfileButton extends ConsumerWidget {
  const EditProfileButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton.icon(
      onPressed: () async => showEditBottomSheet(context, ref),
      icon: Icon(Icons.edit, size: MSize.fS(16)),
      label: const Text('Edit details'),
      style: OutlinedButton.styleFrom(
        fixedSize: Size.fromWidth(MSize.w(130)),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MSize.r(8)),
          side: const BorderSide(color: MColors.primary),
        ),
      ),
    );
  }
}
