import 'package:auto_route/auto_route.dart';
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

class BroadcastFeedbackPage extends ConsumerWidget {
  const BroadcastFeedbackPage({super.key, required this.broadcast});
  final Broadcast broadcast;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final timerEvent = ref.watch(timerProvider.notifier);

    String durationString(int duration) {
      return Duration(seconds: duration).toString().split('.').first;
    }

    return Scaffold(
      body: Padding(
        padding: MSize.pSymmetric(v: 123, h: 16),
        child: Column(
          children: [
            Text(
              broadcast.title.get()!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MSize.fS(20),
                fontWeight: FontWeight.w600,
                letterSpacing: MSize.r(0.25),
              ),
            ),
            MSize.vS(15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // Todo: Add name, but populate creator prop
                Text(
                  '${broadcast.creator?.fullName}',
                  style: TextStyle(fontSize: MSize.fS(14)),
                ),
                MSize.hS(4),
                Text(
                  'HOST',
                  style: TextStyle(
                    fontSize: MSize.fS(10),
                    letterSpacing: MSize.fS(1),
                  ),
                ),
              ],
            ),
            MSize.vS(24),
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
            MSize.vS(24),
            BroadcastTimer(
              placeholder: broadcast.timeElapsed != null
                  ? '0${durationString(broadcast.timeElapsed!)}'
                  : '00:00:00',
            ),
            MSize.vS(24),
            SizedBox(
              height: MSize.h(36),
              width: MSize.w(156),
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  const MAvatar(
                    radius: 18,
                    image: AssetImage('assets/images/move-mountains.jpeg'),
                  ),
                  Positioned(
                    left: MSize.r(30),
                    child: const MAvatar(
                      radius: 18,
                      image: AssetImage('assets/images/move-mountains.jpeg'),
                    ),
                  ),
                  Positioned(
                    left: MSize.r(30 * 2),
                    child: const MAvatar(
                      radius: 18,
                      image: AssetImage('assets/images/move-mountains.jpeg'),
                    ),
                  ),
                  Positioned(
                    left: MSize.r(30 * 3),
                    child: const MAvatar(
                      radius: 18,
                      image: AssetImage('assets/images/move-mountains.jpeg'),
                    ),
                  ),
                  Positioned(
                    left: MSize.r(30 * 4),
                    child: const MAvatar(
                      radius: 18,
                      image: AssetImage('assets/images/move-mountains.jpeg'),
                    ),
                  ),
                ],
              ),
            ),
            MSize.vS(18),
            Text(
              numberOfListeners(),
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MSize.fS(16),
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

    return '${broadcast.liveListeners} person tuned in.';
  }
}
