import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_action_button.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_artwork.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_nested_tab_bar.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_timer.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';

class BroadcastTabView extends ConsumerStatefulWidget {
  const BroadcastTabView({
    super.key,
    required this.broadcast,
    required this.isMute,
    required this.onMute,
    required this.onStart,
    required this.onEnd,
    required this.onDelete,
    this.starting = false,
  });

  final Broadcast broadcast;
  final bool isMute;
  final bool starting;
  final void Function() onMute;
  final void Function() onStart;
  final void Function() onEnd;
  final void Function() onDelete;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _BroadcastTabViewState();
}

class _BroadcastTabViewState extends ConsumerState<BroadcastTabView>
    with AutomaticKeepAliveClientMixin {
  @override
  bool wantKeepAlive = true;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;

    final titleStyle = isTablet ? textTheme.displaySmall : textTheme.titleLarge;
    final nameStyle = isTablet ? textTheme.titleLarge : textTheme.bodyLarge;

    super.build(context);

    final theme = Theme.of(context);
    final colorScheme = Theme.of(context).colorScheme;

    final isLive = ref.watch(socketDataProvider).isLive;
    final loading = ref.watch(socketDataProvider).loading;

    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: MSize.pFromLTRB(0, 30, 0, 16),
          sliver: SliverList(
            delegate: SliverChildListDelegate.fixed([
              Column(
                children: [
                  Padding(
                    padding: MSize.pSymmetric(h: 16),
                    child: AutoSizeText(
                      widget.broadcast.title.get()!,
                      maxLines: 2,
                      minFontSize: 16,
                      maxFontSize: 30,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style: titleStyle?.copyWith(fontWeight: FontWeight.w600),
                    ),
                  ),
                  MSize.vS(10),
                  Padding(
                    padding: MSize.pSymmetric(h: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          widget.broadcast.creator!.fullName!,
                          style: nameStyle,
                        ),
                        MSize.hS(4),
                        Text(
                          'HOST',
                          style: textTheme.labelSmall?.copyWith(
                            letterSpacing: MSize.fS(1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  MSize.vS(20),
                  BroadcastArtwork(imageUrl: widget.broadcast.imageUrl),
                  MSize.vS(20),
                  const BroadcastTimer(),
                  MSize.vS(30),
                  Wrap(
                    runAlignment: WrapAlignment.center,
                    spacing: MSize.r(44),
                    children: [
                      BroadcastActionButton(
                        onTap: isLive ? widget.onMute : null,
                        color:
                            isLive ? colorScheme.primary : theme.disabledColor,
                        icon: widget.isMute ? Icons.mic_off : MIcons.Voice2,
                        title: widget.isMute ? 'unmute' : 'mute',
                      ),
                      BroadcastActionButton(
                        onTap: isLive ? widget.onEnd : widget.onStart,
                        loading: loading,
                        color: isLive ? colorScheme.error : colorScheme.primary,
                        icon: isLive
                            ? Icons.stop_rounded
                            : Icons.play_arrow_rounded,
                        title: isLive
                            ? 'stop broadcast'
                            : widget.starting
                                ? 'Starting...'
                                : 'start broadcast',
                      ),
                      BroadcastActionButton(
                        onTap: isLive ? () {} : widget.onDelete,
                        color: isLive ? theme.disabledColor : colorScheme.error,
                        icon: isLive ? Icons.more_horiz : MIcons.Delete,
                        title: isLive ? 'more' : 'delete',
                      ),
                    ],
                  ),
                  MSize.vS(12),
                  const Divider(),
                  MSize.vS(10),
                  const BroadcastNestedTabBar()
                ],
              )
            ]),
          ),
        )
      ],
    );
  }
}
