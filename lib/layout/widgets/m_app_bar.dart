import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:skeletons/skeletons.dart';

class MAppBar extends StatelessWidget with PreferredSizeWidget {
  const MAppBar({
    super.key,
    this.actions,
    this.customTitle,
    required this.title,
    this.onAvatarPressed,
    this.leading,
    this.showBorder = true,
    this.showAvatar = true,
  });

  final List<Widget>? actions;
  final Widget? customTitle;
  final String title;
  final Widget? leading;
  final void Function()? onAvatarPressed;
  final bool showBorder;
  final bool showAvatar;

  @override
  Size get preferredSize => Size.fromHeight(MSize.r(kToolbarHeight));

  @override
  Widget build(BuildContext context) {
    Widget titleWidget = Text(title);

    if (customTitle != null) {
      titleWidget = customTitle!;
    }

    Widget appBarTitle = Container(
      padding: MSize.pOnly(l: 4),
      decoration: BoxDecoration(
        border: Border(
          left: BorderSide(color: MColors.danger, width: MSize.w(4)),
        ),
      ),
      child: titleWidget,
    );

    return AppBar(
      toolbarHeight: MSize.r(kToolbarHeight),
      leading: leading ?? const SizedBox(),
      leadingWidth: leading == null ? MSize.r(0) : null,
      elevation: 0,
      scrolledUnderElevation: 0,
      title: showBorder ? appBarTitle : titleWidget,
      actions: showAvatar
          ? [_Avatar(onAvatarPressed: onAvatarPressed), MSize.hS(16)]
          : null,
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
