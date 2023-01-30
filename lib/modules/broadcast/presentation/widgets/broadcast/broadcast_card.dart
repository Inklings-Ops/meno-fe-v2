import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_details_bottom_sheet.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_card_artwork.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/listener_counter.dart';

class BroadcastCard extends StatelessWidget {
  const BroadcastCard({Key? key, required this.broadcast}) : super(key: key);
  final Broadcast broadcast;

  @override
  Widget build(BuildContext context) {
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
        width: MSize.w(166),
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
            BroadcastCardArtwork(imageUrl: broadcast.imageUrl),
            MSize.vS(10),
            AutoSizeText(
              broadcast.title.get()!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              minFontSize: 12,
              maxFontSize: 12,
              style: TextStyle(
                fontSize: MSize.fS(12),
                fontWeight: FontWeight.w600,
              ),
            ),
            MSize.vS(6),
            ListenerCounter(broadcast: broadcast, isListening: false),
            MSize.vS(6),
            AutoSizeText(
              broadcast.creator!.fullName!,
              maxLines: 1,
              minFontSize: 11,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxFontSize: 12,
              style: TextStyle(
                fontSize: MSize.fS(12),
                fontWeight: FontWeight.w400,
                color: const Color(0xFF6F6F6F),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
