import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/layout/widgets/m_notification_icon.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/role.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:skeletons/skeletons.dart';

class HomeAppBar extends ConsumerWidget with PreferredSizeWidget {
  const HomeAppBar({super.key, required this.onAvatarPressed});
  final void Function() onAvatarPressed;

  @override
  Size get preferredSize => Size.fromHeight(MSize.r(kToolbarHeight));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileState = ref.watch(profileProvider);
    final isAdmin = ref.watch(roleProvider).value == Role.admin;

    return profileState.maybeWhen(
      orElse: () => const _AppBarSkeleton(),
      authUserLoaded: (profile) => AppBar(
        toolbarHeight: MSize.r(kToolbarHeight),
        leading: const SizedBox(),
        leadingWidth: MSize.r(0),
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0,
        title: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello,',
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontWeight: FontWeight.w400,
                fontSize: MSize.fS(18),
              ),
            ),
            Text(
              profile.fullName.get()!,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColorDark,
                fontSize: MSize.fS(18),
              ),
            ),
          ],
        ),
        actions: [
          if (isAdmin) ...[
            const MNotificationIcon(),
            MSize.hS(16),
          ],
          MAvatar(
            radius: MSize.r(21),
            onTap: onAvatarPressed,
            image: profile.imageUrl != null
                ? NetworkImage(profile.imageUrl!)
                : null,
          ),
          MSize.hS(16),
        ],
      ),
    );
  }
}

class _AppBarSkeleton extends StatelessWidget {
  const _AppBarSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: MSize.r(100),
      leading: const SizedBox(),
      leadingWidth: MSize.r(0),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SkeletonLine(
            style: SkeletonLineStyle(
              height: MSize.fS(18),
              width: MSize.w(60),
            ),
          ),
          SkeletonLine(
            style: SkeletonLineStyle(
              height: MSize.fS(18),
              width: MSize.w(160),
            ),
          )
        ],
      ),
      actions: [
        SkeletonAvatar(
          style: SkeletonAvatarStyle(
            height: MSize.r(26),
            width: MSize.r(26),
            shape: BoxShape.circle,
          ),
        ),
        MSize.hS(16),
        SkeletonAvatar(
          style: SkeletonAvatarStyle(
            height: MSize.r(42),
            width: MSize.r(42),
            shape: BoxShape.circle,
          ),
        ),
        MSize.hS(16),
      ],
    );
  }
}
