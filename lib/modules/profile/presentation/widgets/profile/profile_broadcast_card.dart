import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_card_artwork.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';

class ProfileBroadcastCard extends StatelessWidget {
  const ProfileBroadcastCard({
    Key? key,
    required this.broadcast,
    required this.profile,
  }) : super(key: key);

  final Broadcast broadcast;
  final Profile profile;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;

    var formattedNumber = NumberFormat.compact().format(0);

    return GestureDetector(
      onTap: () {},
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
            BroadcastCardArtwork(imageUrl: broadcast.imageUrl),
            const Spacer(),
            AutoSizeText(
              broadcast.title.get()!,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxFontSize: 18,
              style: textTheme.titleSmall?.copyWith(
                fontWeight: FontWeight.w600,
              ),
            ),
            const Spacer(),
            Text(
              '$formattedNumber tuned in',
              style: textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w400,
                color: const Color(0xFF6F6F6F),
              ),
            ),
            MSize.vS(4),
            AutoSizeText(
              profile.fullName.get()!,
              maxLines: 1,
              minFontSize: 11,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              maxFontSize: 12,
              style: textTheme.bodySmall?.copyWith(
                fontWeight: FontWeight.w400,
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
