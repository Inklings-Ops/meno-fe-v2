import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/activity_count_widget.dart';
import 'package:skeletons/skeletons.dart';

class ProfileContentSkeleton extends StatelessWidget {
  const ProfileContentSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: MSize.pFromLTRB(16, 80, 16, 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SkeletonAvatar(
            style: SkeletonAvatarStyle(
              height: MSize.r(100),
              width: MSize.r(100),
              shape: BoxShape.circle,
            ),
          ),
          MSize.vS(15),
          SkeletonLine(
            style: SkeletonLineStyle(
              height: MSize.fS(18),
              width: MSize.w(100),
              alignment: Alignment.center,
            ),
          ),
          MSize.vS(18),
          SkeletonParagraph(
            style: SkeletonParagraphStyle(
              lineStyle: SkeletonLineStyle(
                height: MSize.fS(18),
                width: MSize.w(300),
                alignment: Alignment.center,
              ),
            ),
          ),
          MSize.vS(16),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SkeletonLine(
                style: SkeletonLineStyle(
                  width: MSize.w(116),
                  height: MSize.h(37),
                  borderRadius: BorderRadius.circular(MSize.r(8)),
                ),
              ),
              MSize.hS(13),
              SkeletonLine(
                style: SkeletonLineStyle(
                  width: MSize.w(85),
                  height: MSize.h(37),
                  borderRadius: BorderRadius.circular(MSize.r(8)),
                ),
              ),
            ],
          ),
          MSize.vS(31),
          SizedBox(
            height: MSize.h(47),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ActivityCountWidget(loading: true),
                ActivityCountWidget(loading: true),
                ActivityCountWidget(loading: true),
              ],
            ),
          ),
          MSize.vS(40),
          Column(
            children: [
              const MSectionTitle(loading: true, showSeeAllButton: false),
              MSize.vS(6),
              SkeletonLine(
                style: SkeletonLineStyle(
                  height: MSize.h(124),
                  width: MSize.sw(1),
                  borderRadius: BorderRadius.circular(MSize.r(10)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
