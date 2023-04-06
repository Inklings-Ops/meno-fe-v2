import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_handle.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/creator_widget.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/status_indicator.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/subscribe_button.dart';

class StreamBottomSheetTitle extends StatelessWidget {
  const StreamBottomSheetTitle({
    super.key,
    required this.broadcast,
    required this.tabController,
  });

  final Broadcast broadcast;
  final TabController tabController;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MSize.h(140),
      width: MSize.sw(1),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColorLight,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(MSize.r(30)),
        ),
      ),
      child: Column(
        children: [
          MSize.vS(9),
          const MBottomSheetHandle(),
          MSize.vS(12),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: MSize.pSymmetric(h: 16),
              child: Text(
                broadcast.title.get()!,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: MSize.fS(18),
                ),
              ),
            ),
          ),
          MSize.vS(9),
          Padding(
            padding: MSize.pSymmetric(h: 16),
            child: CreatorWidget(creator: broadcast.creator!, showAvatar: true),
          ),
          MSize.vS(12),
          Padding(
            padding: MSize.pSymmetric(h: 16),
            child: Row(
              children: [
                const SubscribeButton(disabled: true),
                MSize.hS(10),
                StatusIndicator(
                  height: MSize.r(23),
                  status: broadcast.status,
                ),
              ],
            ),
          ),
          const Spacer(),

          // Align(
          //   alignment: Alignment.centerLeft,
          //   child: TabBar(
          //     controller: tabController,
          //     indicatorSize: TabBarIndicatorSize.label,
          //     labelStyle: TextStyle(
          //       fontSize: MSize.fS(14),
          //       color: Colors.black,
          //     ),
          //     labelPadding: EdgeInsets.zero,
          //     indicatorColor: Colors.black,
          //     indicatorWeight: MSize.r(0.6),
          //     dividerColor: Colors.transparent,
          //     padding: EdgeInsets.zero,
          //     tabs: [
          //       // Tab(
          //       //   height: MSize.h(16),
          //       //   child: const Text('Chat'),
          //       // ),
          //       Tab(
          //         height: MSize.h(16),
          //         child: const Text('Live bible'),
          //       ),
          //       // Tab(
          //       //   height: MSize.h(16),
          //       //   child: const Text('Take Notes'),
          //       // ),
          //     ],
          //   ),
          // ),
          MSize.vS(13),
        ],
      ),
    );
  }
}
