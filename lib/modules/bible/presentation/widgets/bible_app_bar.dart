import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/scripture_selector.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:skeletons/skeletons.dart';

class BibleAppBar extends StatelessWidget with PreferredSizeWidget {
  const BibleAppBar({super.key, this.onAvatarPressed});

  final void Function()? onAvatarPressed;

  @override
  Size get preferredSize => Size.fromHeight(MSize.r(90));

  @override
  Widget build(BuildContext context) {
    Widget titleWidget = AutoSizeText(
      'Bible',
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: MSize.fS(18),
      ),
    );

    return AppBar(
      toolbarHeight: MSize.r(90),
      elevation: 0,
      scrolledUnderElevation: 0,
      title: titleWidget,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(MSize.h(0)),
        child: const ScriptureSelector(),
      ),
      actions: [
        _Avatar(onAvatarPressed: onAvatarPressed),
        MSize.hS(16),
      ],
    );
  }
}

class _Avatar extends ConsumerWidget {
  const _Avatar({Key? key, this.onAvatarPressed}) : super(key: key);
  final void Function()? onAvatarPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileProvider);

    return profileState.maybeWhen(
      orElse: () => SkeletonAvatar(
        style: SkeletonAvatarStyle(
          height: MSize.r(42),
          width: MSize.r(42),
          shape: BoxShape.circle,
        ),
      ),
      authUserLoaded: (profile) => MAvatar(
        radius: MSize.r(21),
        onTap: onAvatarPressed,
        image:
            profile.imageUrl != null ? NetworkImage(profile.imageUrl!) : null,
      ),
    );
  }
}
