import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_action_button.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_artwork.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_nested_tab_bar.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_timer.dart';

class BroadcastTabView extends StatelessWidget {
  const BroadcastTabView({
    super.key,
    required this.broadcast,
    required this.mute,
    required this.start,
    required this.end,
    required this.isMute,
    required this.started,
    required this.loading,
  });

  final Broadcast broadcast;
  final void Function() mute;
  final void Function() start;
  final void Function() end;
  final bool isMute;
  final bool started;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: MSize.pFromLTRB(16, 30, 16, 16),
      child: Column(
        children: [
          Text(
            broadcast.title.get()!,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MSize.fS(19),
              fontWeight: FontWeight.w600,
            ),
          ),
          MSize.vS(10),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                broadcast.creator!.fullName!,
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
          MSize.vS(20),
          BroadcastArtwork(imageUrl: broadcast.imageUrl),
          MSize.vS(20),
          if (started)
            const BroadcastTimer()
          else
            const BroadcastTimer(placeholderTimer: '00:00:00'),
          MSize.vS(30),
          Wrap(
            runAlignment: WrapAlignment.center,
            spacing: MSize.r(44),
            children: [
              BroadcastActionButton(
                onTap: started ? mute : null,
                color: const Color(0xFF360090),
                icon: isMute ? Icons.mic_off : MIcons.Voice2,
                title: isMute ? 'unmute' : 'mute',
              ),
              BroadcastActionButton(
                onTap: started ? end : start,
                loading: loading,
                color:
                    started ? const Color(0xFFDF0201) : const Color(0xFF360090),
                icon: started ? Icons.stop_rounded : Icons.play_arrow_rounded,
                title: started ? 'stop broadcast' : 'start broadcast',
              ),
              BroadcastActionButton(
                onTap: started ? () {} : null,
                color: const Color(0xFF6B6B6B),
                icon: Icons.more_horiz,
                title: 'more',
              ),
            ],
          ),
          MSize.vS(12),
          const Divider(),
          MSize.vS(10),
          const BroadcastNestedTabBar()
        ],
      ),
    );
  }
}
