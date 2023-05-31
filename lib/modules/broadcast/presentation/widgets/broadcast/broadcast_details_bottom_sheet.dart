import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_card_type.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_details_action_buttons.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_details_artwork.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/listener_counter.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/status_indicator.dart';

class BroadcastDetailsBottomSheet extends StatelessWidget {
  final Broadcast broadcast;
  final BroadcastCardType cardType;

  const BroadcastDetailsBottomSheet({
    super.key,
    required this.broadcast,
    this.cardType = BroadcastCardType.live,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return DraggableScrollableSheet(
        initialChildSize: MSize.r(0.24),
        minChildSize: MSize.r(0.24),
        maxChildSize: MSize.r(0.9),
        expand: false,
        builder: (context, scrollController) {
          return SingleChildScrollView(
            controller: scrollController,
            child: Column(
              children: [
                _TopSection(broadcast: broadcast, cardType: cardType),
                MSize.vS(40),
                const MSectionTitle(
                  title: 'Broadcast Information',
                  showBorder: false,
                  addSideMargin: true,
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
                MSize.vS(20),
              ],
            ),
          );
        });
  }
}

class _TopSection extends StatelessWidget {
  const _TopSection({
    Key? key,
    required this.broadcast,
    this.cardType = BroadcastCardType.live,
  }) : super(key: key);

  final Broadcast broadcast;
  final BroadcastCardType cardType;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    var formattedNumber = NumberFormat.compact().format(
      broadcast.totalListeners ?? 0,
    );

    return Padding(
      padding: MSize.pSymmetric(h: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          BroadcastDetailsArtwork(broadcast: broadcast),
          MSize.hS(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                MSize.vS(6),
                AutoSizeText(
                  broadcast.title.get()!,
                  textAlign: TextAlign.left,
                  softWrap: true,
                  maxLines: 2,
                  maxFontSize: 26,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.titleMedium?.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  broadcast.creator?.fullName ?? broadcast.fullName ?? '',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: textTheme.bodyMedium,
                ),
                MSize.vS(11),
                if (cardType == BroadcastCardType.live) ...[
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ListenerCounter(broadcast: broadcast, fontSize: 16),
                      MSize.hS(12),
                      StatusIndicator(broadcast: broadcast),
                    ],
                  ),
                  MSize.vS(11),
                  BroadcastDetailsActionButtons(broadcast: broadcast)
                ] else ...[
                  Text(
                    '$formattedNumber tuned in',
                    style: textTheme.bodySmall?.copyWith(
                      fontWeight: FontWeight.w400,
                      color: const Color(0xFF6F6F6F),
                    ),
                  ),
                ],
                MSize.vS(6),
              ],
            ),
          )
        ],
      ),
    );
  }
}
