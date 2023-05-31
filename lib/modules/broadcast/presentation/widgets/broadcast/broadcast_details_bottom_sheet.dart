import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/dialog_box/m_confirmation_dialog.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_card_type.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_details_action_buttons.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_details_artwork.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/listener_counter.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/status_indicator.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';

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

class _TopSection extends HookConsumerWidget {
  const _TopSection({
    Key? key,
    required this.broadcast,
    this.cardType = BroadcastCardType.live,
  }) : super(key: key);

  final Broadcast broadcast;
  final BroadcastCardType cardType;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loading = useState(false);

    final textTheme = Theme.of(context).textTheme;
    var formattedNumber = NumberFormat.compact().format(
      broadcast.totalListeners ?? 0,
    );

    final event = ref.read(broadcastProvider.notifier);

    Future<void> onDelete() async {
      final shouldDelete = await showDialog<bool>(
        context: context,
        builder: (context) => const MConfirmationDialog(
          title: 'Delete broadcast?',
          buttonTitle: 'Delete',
        ),
      );

      if (shouldDelete == true) {
        loading.value = true;
        event.deletePressed(broadcast.id);

        await Future.delayed(Duration.zero);
        await event.getCurrentUserBroadcasts();

        if (context.mounted) {
          AutoRouter.of(context).pop();
          loading.value = false;
          ref.read(profileProvider.notifier).authProfileLoaded();
        }
      }
    }

    return Padding(
      padding: MSize.pSymmetric(h: 16),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BroadcastDetailsArtwork(broadcast: broadcast),
          MSize.hS(10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
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
                  MSize.vS(11),
                  LimitedBox(
                    maxHeight: MSize.h(30),
                    child: TextButton(
                      onPressed: loading.value ? null : onDelete,
                      style: TextButton.styleFrom(
                        backgroundColor:
                            loading.value ? Colors.grey : Colors.red,
                        foregroundColor: Colors.white,
                        fixedSize: Size(MSize.w(90), MSize.h(10)),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MSize.r(8)),
                        ),
                      ),
                      child: Text(loading.value ? 'Deleting...' : 'Delete'),
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
