import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_image_source_bottom_sheet.dart';
import 'package:meno_fe_v2/modules/auth/application/register/register_notifier.dart';

class UploadImageWidget extends ConsumerWidget {
  const UploadImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final state = ref.watch(registerProvider);
    final event = ref.watch(registerProvider.notifier);

    ref.listen<RegisterState>(
        registerProvider, (p, n) => p?.avatar != n.avatar);

    return GestureDetector(
      onTap: () async {
        await showModalBottomSheet(
          context: context,
          backgroundColor: Colors.transparent,
          elevation: 0,
          builder: (context) => MImageSourceBottomSheet(
            fromGallery: () {
              event.avatarPicked(true);
              context.router.pop();
            },
            fromCamera: () {
              event.avatarPicked(false);
              context.router.pop();
            },
          ),
        );
      },
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: theme.primaryColor),
            ),
            child: CircleAvatar(
              radius: MSize.r(20),
              backgroundColor: Colors.transparent,
              foregroundImage: state.avatar?.get() != null
                  ? FileImage(state.avatar!.get()!)
                  : null,
              child: state.avatar?.get() == null
                  ? const Icon(MIcons.Camera1, color: MColors.primary)
                  : const SizedBox(),
            ),
          ),
          MSize.vS(4),
          Text(
            'Upload Image',
            style: textTheme.bodyMedium?.copyWith(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
