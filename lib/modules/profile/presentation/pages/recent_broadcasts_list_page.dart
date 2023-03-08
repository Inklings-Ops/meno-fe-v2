import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_list_skeleton.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';

class RecentBroadcastListPage extends ConsumerStatefulWidget {
  const RecentBroadcastListPage({super.key, required this.profile});
  final Profile profile;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _RecentBroadcastListPageState();
}

class _RecentBroadcastListPageState
    extends ConsumerState<RecentBroadcastListPage> {
  @override
  Widget build(BuildContext context) {
    final broadcasts = ref.watch(broadcastProvider).currentUserBroadcasts;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        leadingWidth: MSize.w(70),
        leading: GestureDetector(
          onTap: () => AutoRouter.of(context).pop(),
          child: Padding(
            padding: MSize.pOnly(l: 10.0),
            child: Row(
              children: const [
                Icon(Icons.chevron_left),
                Text('Back', style: TextStyle(fontWeight: FontWeight.w500))
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const MSectionTitle(
            title: 'Recent Broadcasts',
            addSideMargin: true,
            showSeeAllButton: false,
          ),
          MSize.vS(10),
          MSize.vS(30),
          Container(
            height: MSize.h(37),
            padding: MSize.pSymmetric(h: 18),
            child: TextFormField(
              decoration: InputDecoration(
                hintText: 'Search your recent broadcasts',
                prefixIcon: const Icon(MIcons.Search1),
                filled: true,
                fillColor: const Color(0xFFF0F0F0),
                errorMaxLines: 5,
                hintStyle: TextStyle(
                  color: const Color(0xffc4c4c4),
                  fontSize: MSize.fS(14),
                  fontWeight: FontWeight.w400,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(MSize.r(10)),
                  borderSide: const BorderSide(color: Color(0xff9D9D9D)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(MSize.r(10)),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(MSize.r(10)),
                  borderSide: const BorderSide(color: Colors.transparent),
                ),
              ),
            ),
          ),
          // MSize.vS(20),
          // Padding(
          //   padding: MSize.pSymmetric(h: 16),
          //   child: Row(
          //     children: [
          //       const ChoiceChip(label: Text('All'), selected: true),
          //       MSize.hS(20),
          //       const ChoiceChip(label: Text('Subscribed'), selected: false),
          //     ],
          //   ),
          // ),
          MSize.vS(20),
          if (broadcasts == null || broadcasts.isEmpty)
            GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              primary: false,
              shrinkWrap: true,
              crossAxisCount: 4,
              childAspectRatio: 1.8,
              padding: MSize.pFromLTRB(16, 0, 16, 30),
              children: List.generate(
                10,
                (index) => const BroadcastCardSkeleton(),
              ),
            )
          else
            GridView.builder(
              primary: false,
              shrinkWrap: true,
              padding: MSize.pFromLTRB(16, 0, 16, 30),
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 24,
                childAspectRatio: 0.9,
                crossAxisSpacing: 24,
              ),
              itemCount: broadcasts.length,
              itemBuilder: (context, index) {
                final broadcast = broadcasts[index]!;
                var formattedNumber = NumberFormat.compact().format(
                  broadcast.totalListeners ?? 0,
                );

                return Container(
                  height: MSize.h(172),
                  width: MSize.w(160),
                  padding: MSize.pSymmetric(v: 10, h: 12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(MSize.r(20)),
                    color: Colors.white,
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
                      Container(
                        height: MSize.h(84),
                        width: MSize.w(135),
                        decoration: BoxDecoration(
                          border: Border.all(color: MColors.disabled),
                          borderRadius: BorderRadius.circular(MSize.r(14)),
                          image: broadcast.imageUrl != null
                              ? DecorationImage(
                                  image: NetworkImage(broadcast.imageUrl!),
                                  fit: BoxFit.cover,
                                )
                              : null,
                        ),
                        child: broadcast.imageUrl == null
                            ? const Icon(MIcons.Image2, color: MColors.disabled)
                            : null,
                      ),
                      MSize.vS(6),
                      Text(
                        broadcast.title.get()!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: MSize.fS(12),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      MSize.vS(6),
                      Text(
                        '$formattedNumber tuned in',
                        style: TextStyle(
                          fontSize: MSize.fS(12),
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF6F6F6F),
                        ),
                      ),
                      MSize.vS(5),
                      Text(
                        widget.profile.fullName.get()!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: MSize.fS(12),
                          fontWeight: FontWeight.w400,
                          color: const Color(0xFF6F6F6F),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
        ],
      ),
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
