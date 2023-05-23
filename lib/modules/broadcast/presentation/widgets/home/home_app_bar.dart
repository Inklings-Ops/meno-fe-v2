import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:skeletons/skeletons.dart';

class HomeAppBar extends ConsumerWidget {
  const HomeAppBar({super.key, required this.onAvatarPressed});
  final void Function() onAvatarPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final profileState = ref.watch(profileProvider);

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
              style: textTheme.titleMedium?.copyWith(
                color: Theme.of(context).primaryColorDark,
                fontWeight: FontWeight.w400,
                height: 1,
                letterSpacing: 0,
              ),
            ),
            Text(
              profile.fullName.get()!,
              style: textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.w600,
                color: Theme.of(context).primaryColorDark,
                letterSpacing: 0,
                fontSize: textTheme.titleLarge!.fontSize! * 0.85,
              ),
            ),
          ],
        ),
        actions: [
          MAvatar(
            radius: MSize.r(18),
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
    final textTheme = Theme.of(context).textTheme;

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
              height: textTheme.titleMedium!.fontSize!,
              width: MSize.w(60),
            ),
          ),
          SkeletonLine(
            style: SkeletonLineStyle(
              height: textTheme.titleMedium!.fontSize!,
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
            height: MSize.r(36),
            width: MSize.r(36),
            shape: BoxShape.circle,
          ),
        ),
        MSize.hS(16),
      ],
    );
  }
}
