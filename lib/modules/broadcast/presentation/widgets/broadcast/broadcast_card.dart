import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_card_type.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_card_artwork.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_details_bottom_sheet.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/creator_widget.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/listener_counter.dart';

class BroadcastCard extends StatelessWidget {
  const BroadcastCard({
    super.key,
    required this.broadcast,
    this.cardType = BroadcastCardType.live,
  });

  final Broadcast broadcast;
  final BroadcastCardType cardType;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;

    var formattedNumber = NumberFormat.compact().format(
      broadcast.totalListeners ?? 0,
    );

    return GestureDetector(
      onTap: () async {
        await showModalBottomSheet(
          context: context,
          isDismissible: true,
          isScrollControlled: true,
          enableDrag: true,
          elevation: 0,
          builder: (BuildContext context) {
            return BroadcastDetailsBottomSheet(broadcast: broadcast);
          },
        );
      },
      child: Container(
        height: MSize.h(194),
        width: isTablet ? MSize.sw(0.28) : MSize.w(166),
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
            const Spacer(),
            BroadcastCardArtwork(
              imageUrl: broadcast.imageUrl,
              cardType: cardType,
            ),
            const Spacer(),
            AutoSizeText(
              broadcast.title.get()!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              minFontSize: 12,
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            if (cardType == BroadcastCardType.live)
              ListenerCounter(
                broadcast: broadcast,
                isListening: false,
                fontSize: 14,
              )
            else
              Text(
                '$formattedNumber tuned in',
                style: textTheme.bodySmall?.copyWith(
                  fontWeight: FontWeight.w400,
                  color: const Color(0xFF6F6F6F),
                ),
              ),
            MSize.vS(4),
            if (cardType == BroadcastCardType.live)
              CreatorWidget(
                creator: broadcast.creator!,
                alignment: MainAxisAlignment.center,
              )
            else
              AutoSizeText(
                broadcast.fullName ?? '',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                minFontSize: 11,
                maxFontSize: 12,
                style: textTheme.bodySmall?.copyWith(
                  color: const Color(0xFF6F6F6F),
                ),
              ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
