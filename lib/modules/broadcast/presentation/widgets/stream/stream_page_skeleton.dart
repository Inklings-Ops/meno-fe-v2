import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_artwork.dart';

class StreamPageSkeleton extends StatelessWidget {
  const StreamPageSkeleton({super.key, required this.broadcast});
  final Broadcast broadcast;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MColors.splashScreenBg,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: Container(
        padding: MSize.pSymmetric(h: 16),
        height: MSize.sh(1),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MSize.vS(50),
            BroadcastArtwork(imageUrl: broadcast.imageUrl),
            MSize.vS(10),
            Text(
              broadcast.title.get()!,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w600,
                fontSize: MSize.fS(18),
              ),
            ),
            MSize.vS(10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  broadcast.creator!.fullName!,
                  style: TextStyle(
                    fontSize: MSize.fS(14),
                    color: Colors.white,
                  ),
                ),
                MSize.hS(4),
                Text(
                  'HOST',
                  style: TextStyle(
                    fontSize: MSize.fS(10),
                    letterSpacing: MSize.fS(1),
                    color: Colors.white,
                  ),
                ),
              ],
            ),
            Lottie.asset(
              'assets/animations/loading-indicator.json',
              animate: true,
              height: MSize.sh(0.2),
              fit: BoxFit.fill,
            ),
          ],
        ),
      ),
    );
  }
}
