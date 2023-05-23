import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/scripture_selector.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:skeletons/skeletons.dart';

class BibleAppBar extends StatelessWidget {
  const BibleAppBar({super.key, this.onAvatarPressed});

  final void Function()? onAvatarPressed;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: MSize.r(90),
      elevation: 0,
      scrolledUnderElevation: 0,
      title: const Text('Bible'),
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
          height: MSize.r(36),
          width: MSize.r(36),
          shape: BoxShape.circle,
        ),
      ),
      authUserLoaded: (profile) => MAvatar(
        radius: MSize.r(18),
        onTap: onAvatarPressed,
        image:
            profile.imageUrl != null ? NetworkImage(profile.imageUrl!) : null,
      ),
    );
  }
}
