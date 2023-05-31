import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/creator.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:skeletons/skeletons.dart';

class CreatorWidget extends ConsumerWidget {
  const CreatorWidget({
    super.key,
    required this.creator,
    this.loading = false,
    this.showAvatar = false,
    this.alignment = MainAxisAlignment.start,
  });

  final Creator creator;
  final bool loading;
  final bool showAvatar;
  final MainAxisAlignment alignment;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;

    if (loading) {
      return _Skeleton(showAvatar: showAvatar);
    }

    return GestureDetector(
      onTap: () {
        ref.read(profileProvider.notifier).profileLoaded(creator.id!);
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: alignment,
        children: [
          if (showAvatar) ...[
            MAvatar(
              radius: isTablet ? MSize.r(8) : MSize.r(13),
              showBorder: false,
              image: creator.imageUrl != null
                  ? NetworkImage(creator.imageUrl!)
                  : null,
            ),
            isTablet ? MSize.hS(5) : MSize.hS(10),
          ],
          AutoSizeText(
            creator.fullName!,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            minFontSize: 11,
            maxFontSize: 12,
            style: textTheme.bodyMedium?.copyWith(
              color: const Color(0xFF6F6F6F),
            ),
          ),
        ],
      ),
    );
  }
}

class _Skeleton extends StatelessWidget {
  const _Skeleton({required this.showAvatar});
  final bool showAvatar;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        if (showAvatar) ...[
          SkeletonAvatar(
            style: SkeletonAvatarStyle(
              height: MSize.r(26),
              width: MSize.r(26),
              shape: BoxShape.circle,
            ),
          ),
          MSize.hS(10),
        ],
        SkeletonLine(
          style: SkeletonLineStyle(
            height: MSize.r(12),
            width: MSize.r(70),
          ),
        )
      ],
    );
  }
}
