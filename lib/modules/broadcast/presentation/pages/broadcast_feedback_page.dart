import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/broadcast/application/timer/timer_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_timer.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';

class BroadcastFeedbackPage extends ConsumerWidget {
  const BroadcastFeedbackPage({super.key, required this.broadcast});
  final Broadcast broadcast;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;

    final titleStyle = isTablet ? textTheme.displaySmall : textTheme.titleLarge;
    final nameStyle = isTablet ? textTheme.titleLarge : textTheme.bodyLarge;

    final timerEvent = ref.watch(timerProvider.notifier);
    final listeners = ref.read(socketDataProvider).listeners;

    String durationString(int duration) {
      return Duration(seconds: duration).toString().split('.').first;
    }

    return Scaffold(
      body: Padding(
        padding: MSize.pSymmetric(v: 123, h: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AutoSizeText(
              broadcast.title.get()!,
              maxLines: 2,
              minFontSize: 16,
              textAlign: TextAlign.center,
              style: titleStyle?.copyWith(
                fontWeight: FontWeight.w600,
                letterSpacing: MSize.r(0.25),
              ),
            ),
            MSize.vS(6),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('${broadcast.creator?.fullName}', style: nameStyle),
                MSize.hS(4),
                Text(
                  'HOST',
                  style: textTheme.labelSmall?.copyWith(
                    letterSpacing: MSize.fS(1),
                  ),
                ),
              ],
            ),
            const Spacer(),
            Container(
              height: MSize.r(164),
              width: MSize.r(164),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: const Color(0xFFF5F5F5),
                  width: MSize.r(3),
                ),
              ),
              child: MAvatar(
                radius: 72.5,
                showBorder: false,
                icon: MIcons.Image,
                image: broadcast.imageUrl != null
                    ? NetworkImage(broadcast.imageUrl!)
                    : null,
              ),
            ),
            MSize.vS(20),
            BroadcastTimer(
              placeholder: broadcast.timeElapsed != null
                  ? '0${durationString(broadcast.timeElapsed!)}'
                  : '00:00:00',
            ),
            const Spacer(),
            SizedBox(
              height: MSize.h(36),
              width: MSize.w(30 * (listeners?.length ?? 0)),
              child: Stack(
                clipBehavior: Clip.none,
                alignment: Alignment.center,
                children: [
                  for (var i = 0; i < (listeners?.length ?? 0) && i < 6; i++)
                    Positioned(
                      left: MSize.r(30 * i),
                      child: MAvatar(
                        radius: 18,
                        image: listeners![i]?.imageUrl != null
                            ? NetworkImage(listeners[i]!.imageUrl!)
                            : null,
                      ),
                    ),
                ],
              ),
            ),
            MSize.vS(6),
            Text(
              numberOfListeners(),
              textAlign: TextAlign.center,
              style: textTheme.bodyLarge?.copyWith(
                color: const Color(0xFF9D9D9D),
              ),
            ),
            const Spacer(),
            MButton(
              title: 'Go back home',
              onPressed: () {
                timerEvent.reset();
                AutoRouter.of(context).replaceAll([const LayoutRoute()]);
              },
            ),
          ],
        ),
      ),
    );
  }

  String numberOfListeners() {
    if (broadcast.liveListeners != null && broadcast.liveListeners! < 2) {
      return '${broadcast.liveListeners} person tuned in.';
    }

    return '${broadcast.liveListeners} persons tuned in.';
  }
}
