import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:skeletons/skeletons.dart';

class BroadcastListSkeleton extends StatelessWidget {
  const BroadcastListSkeleton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MSize.h(226),
      child: ListView.separated(
        itemCount: 8,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, i) => MSize.hS(25),
        padding: MSize.pAll(16),
        itemBuilder: (context, index) {
          return const BroadcastCardSkeleton();
        },
      ),
    );
  }
}

class BroadcastCardSkeleton extends StatelessWidget {
  const BroadcastCardSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MSize.h(194),
      width: MSize.w(166),
      padding: MSize.pAll(12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(MSize.r(10)),
        boxShadow: [
          BoxShadow(
            color: const Color(0x0B000000),
            spreadRadius: MSize.r(2),
            blurRadius: MSize.r(10),
            offset: Offset(0, MSize.r(2)),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SkeletonAvatar(
            style: SkeletonAvatarStyle(
              height: MSize.r(98),
              width: MSize.r(98),
              shape: BoxShape.circle,
            ),
          ),
          MSize.vS(10),
          SkeletonLine(style: SkeletonLineStyle(height: MSize.r(11))),
          MSize.vS(6),
          SkeletonLine(style: SkeletonLineStyle(height: MSize.r(11))),
          MSize.vS(6),
          SkeletonLine(style: SkeletonLineStyle(height: MSize.r(11))),
        ],
      ),
    );
  }
}
