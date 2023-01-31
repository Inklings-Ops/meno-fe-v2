import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_action_button.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_artwork.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_nested_tab_bar.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_timer.dart';
import 'package:skeletons/skeletons.dart';

class BroadcastTabViewSkeleton extends StatelessWidget {
  const BroadcastTabViewSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: MSize.pFromLTRB(16, 30, 16, 16),
      child: Column(
        children: [
          SkeletonLine(
            style: SkeletonLineStyle(
              height: MSize.fS(19),
              width: MSize.w(280),
              alignment: Alignment.center,
            ),
          ),
          MSize.vS(10),
          SkeletonLine(
            style: SkeletonLineStyle(
              height: MSize.fS(14),
              width: MSize.w(140),
              alignment: Alignment.center,
            ),
          ),
          MSize.vS(20),
          const BroadcastArtwork(loading: true),
          MSize.vS(20),
          const BroadcastTimer(placeholder: '00:00:00'),
          MSize.vS(30),
          Wrap(
            runAlignment: WrapAlignment.center,
            spacing: MSize.r(44),
            children: [
              BroadcastActionButton(
                onTap: () {},
                color: const Color(0xFF360090),
                icon: MIcons.Voice2,
                title: 'mute',
              ),
              BroadcastActionButton(
                onTap: () {},
                color: const Color(0xFFDF0201),
                icon: Icons.stop_rounded,
                title: 'stop broadcast',
              ),
              BroadcastActionButton(
                onTap: () {},
                color: const Color(0xFF6B6B6B),
                icon: Icons.more_horiz,
                title: 'more',
              ),
            ],
          ),
          MSize.vS(12),
          const Divider(),
          MSize.vS(10),
          const BroadcastNestedTabBar()
        ],
      ),
    );
  }
}
