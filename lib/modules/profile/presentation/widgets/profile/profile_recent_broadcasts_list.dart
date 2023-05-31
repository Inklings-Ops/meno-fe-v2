import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_card_type.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_card.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';

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
    final textTheme = Theme.of(context).textTheme;

    final allBroadcasts = ref.watch(broadcastProvider).currentUserBroadcasts;
    final broadcasts = allBroadcasts?.take(5).toList();

    if (broadcasts == null) {
      return const SizedBox();
    }

    return Column(
      children: [
        MSectionTitle(
          title: 'My Recent Broadcasts',
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
              color: MColors.primaryLight.withOpacity(0.4),
              borderRadius: BorderRadius.circular(MSize.r(16)),
            ),
            child: Text('No Live Broadcast', style: textTheme.titleLarge),
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
                  return BroadcastCard(
                    broadcast: broadcasts[index]!,
                    cardType: BroadcastCardType.recent,
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
