import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/layout/widgets/m_notification_icon.dart';

class HomeAppBar extends ConsumerWidget with PreferredSizeWidget {
  const HomeAppBar({super.key});

  @override
  Size get preferredSize => Size.fromHeight(MSize.r(100));

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return AppBar(
      toolbarHeight: MSize.r(100),
      leading: const SizedBox(),
      leadingWidth: MSize.r(0),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // if (appState.loading)
          //   SkeletonLine(
          //     style: SkeletonLineStyle(
          //       height: MSize.fS(18),
          //       width: MSize.w(60),
          //     ),
          //   )
          // else
          Text(
            'Hello,',
            style: TextStyle(
              color: Theme.of(context).primaryColorDark,
              fontWeight: FontWeight.w400,
              fontSize: MSize.fS(18),
            ),
          ),
          // if (appState.loading || appState.profile == null)
          //   SkeletonLine(
          //     style: SkeletonLineStyle(
          //       height: MSize.fS(18),
          //       width: MSize.w(160),
          //     ),
          //   )
          // else
          Text(
            'David Michael',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              color: Theme.of(context).primaryColorDark,
              fontSize: MSize.fS(18),
            ),
          ),
        ],
      ),
      actions: [
        // if (appState.loading)
        //   SkeletonAvatar(
        //     style: SkeletonAvatarStyle(
        //       height: MSize.r(26),
        //       width: MSize.r(26),
        //       shape: BoxShape.circle,
        //     ),
        //   )
        // else
        const MNotificationIcon(),
        MSize.hS(16),
        // if (appState.loading)
        //   SkeletonAvatar(
        //     style: SkeletonAvatarStyle(
        //       height: MSize.r(42),
        //       width: MSize.r(42),
        //       shape: BoxShape.circle,
        //     ),
        //   )
        // else
        MAvatar(
          radius: MSize.r(21),
          onTap: () {},
          // image: appState.profile?.imageUrl != null
          //     ? NetworkImage(appState.profile!.imageUrl!)
          //     : null,
        ),
        MSize.hS(16),
      ],
    );
  }
}
