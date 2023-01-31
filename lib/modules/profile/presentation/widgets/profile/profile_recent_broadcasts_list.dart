import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_broadcast_card.dart';

class ProfileRecentBroadcastList extends ConsumerStatefulWidget {
  const ProfileRecentBroadcastList({super.key, required this.profile});
  final Profile profile;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _ProfileRecentBroadcastListState();
}

class _ProfileRecentBroadcastListState
    extends ConsumerState<ProfileRecentBroadcastList> {
  @override
  Widget build(BuildContext context) {
    final broadcasts = ref.watch(broadcastProvider).currentUserBroadcasts;

    return Column(
      children: [
        MSectionTitle(
          title: 'Recent Broadcasts',
          addSideMargin: true,
          seeAllAction: () {
            AutoRouter.of(context).push(
              RecentBroadcastListRoute(profile: widget.profile),
            );
          },
        ),
        MSize.vS(6),
        if (broadcasts.isEmpty)
          Container(
            height: MSize.h(206),
            width: MSize.sw(1),
            margin: MSize.pSymmetric(h: 16, v: 10),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: MColors.primaryLight,
              borderRadius: BorderRadius.circular(MSize.r(16)),
            ),
            child: Text(
              'No Live Broadcast',
              style: TextStyle(fontSize: MSize.r(16)),
            ),
          )
        else
          SizedBox(
            height: MSize.h(226),
            child: ListView.separated(
              itemCount: broadcasts.length,
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              separatorBuilder: (context, i) => MSize.hS(13),
              padding: MSize.pAll(16),
              itemBuilder: (context, index) {
                if (index > 2) {
                  return const SizedBox();
                } else {
                  return ProfileBroadcastCard(
                    broadcast: broadcasts[index]!,
                    profile: widget.profile,
                  );
                }
              },
            ),
          ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      ref.read(broadcastProvider.notifier).getCurrentUserBroadcasts();
    });
  }
}
