import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_close_button.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_handle.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_details_action_buttons.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_details_artwork.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/listener_counter.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/status_indicator.dart';

class BroadcastDetailsBottomSheet extends StatelessWidget {
  const BroadcastDetailsBottomSheet({super.key, required this.broadcast});

  final Broadcast broadcast;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DraggableScrollableSheet(
      initialChildSize: MSize.r(0.35),
      minChildSize: MSize.r(0.35),
      // maxChildSize: MSize.r(0.9),
      builder: (context, scrollController) => Column(
        children: [
          const Align(
            alignment: Alignment.centerRight,
            child: MBottomSheetCloseButton(),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(MSize.r(40)),
                ),
              ),
              child: SingleChildScrollView(
                controller: scrollController,
                padding: MSize.pOnly(t: 10, b: 20),
                child: Column(
                  children: [
                    const MBottomSheetHandle(),
                    MSize.vS(20),
                    _TopSection(broadcast: broadcast),
                    MSize.vS(40),
                    MSectionTitle(
                      title: 'Broadcast Information',
                      showBorder: false,
                      addSideMargin: true,
                      fontSize: MSize.fS(16),
                      showSeeAllButton: false,
                    ),
                    if (broadcast.description?.get() != null) ...[
                      MSize.vS(10),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: MSize.pSymmetric(h: 22),
                        child: Text(
                          broadcast.description!.get()!,
                          style: textTheme.bodyLarge,
                        ),
                      ),
                    ],
                    MSize.vS(30),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _TopSection extends StatelessWidget {
  const _TopSection({Key? key, required this.broadcast}) : super(key: key);

  final Broadcast broadcast;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Padding(
      padding: MSize.pSymmetric(h: 16),
      child: Row(
        children: [
          BroadcastDetailsArtwork(broadcast: broadcast),
          MSize.hS(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                MSize.vS(6),
                AutoSizeText(
                  broadcast.title.get()!,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  minFontSize: 16,
                  style: textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  broadcast.creator!.fullName!,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyLarge,
                ),
                MSize.vS(11),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    ListenerCounter(broadcast: broadcast, fontSize: 16),
                    MSize.hS(12),
                    StatusIndicator(status: broadcast.status),
                  ],
                ),
                MSize.vS(11),
                BroadcastDetailsActionButtons(broadcast: broadcast),
                MSize.vS(6),
              ],
            ),
          )
        ],
      ),
    );
  }
}
