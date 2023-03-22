import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/profile/application/profile_form/profile_form_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/edit_profile_bottom_sheet.dart';

Future<void> showEditBottomSheet(BuildContext context, WidgetRef ref) async {
  final profileFormEvent = ref.watch(profileFormProvider.notifier);

  await profileFormEvent.init().whenComplete(() {
    showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      elevation: 0,
      useSafeArea: true,
      constraints: BoxConstraints(
        maxHeight: MSize.sh(0.95),
      ),
      builder: (context) => Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
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
      icon: Icon(Icons.edit, size: MSize.r(12)),
      label: Text(
        'Edit details',
        style: TextStyle(fontSize: MSize.fS(12)),
      ),
      style: OutlinedButton.styleFrom(
        fixedSize: Size(MSize.w(116), MSize.h(37)),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MSize.r(8)),
          side: const BorderSide(color: MColors.primary),
        ),
      ),
    );
  }
}
