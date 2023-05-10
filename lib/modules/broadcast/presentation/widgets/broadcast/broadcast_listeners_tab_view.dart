import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';

class BroadcastListenersTabView extends HookConsumerWidget {
  const BroadcastListenersTabView({super.key, required this.broadcastId});
  final String broadcastId;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final listeners = ref.watch(socketDataProvider).listeners;

    if (listeners == null || listeners.isEmpty) {
      return SizedBox(
        // height: MSize.sh(0.1),
        width: MSize.sw(1),
        child: Wrap(
          spacing: 30,
          children: [
            MSize.vS(30),
            Center(
              child: Text('No live listeners.', style: textTheme.bodyLarge),
            ),
          ],
        ),
      );
    }

    return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        childAspectRatio: 1.3,
        mainAxisSpacing: MSize.r(24),
      ),
      itemCount: listeners.length,
      itemBuilder: (context, index) {
        return SizedBox(
          height: MSize.h(71),
          width: MSize.w(65),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MAvatar(
                radius: MSize.r(15),
                showBorder: false,
                image: listeners[index]?.imageUrl != null
                    ? NetworkImage(listeners[index]!.imageUrl!)
                    : null,
              ),
              MSize.vS(5),
              AutoSizeText(
                listeners[index]!.fullName,
                maxLines: 2,
                softWrap: true,
                textAlign: TextAlign.center,
                overflow: TextOverflow.clip,
                style: textTheme.labelLarge?.copyWith(
                  fontWeight: FontWeight.normal,
                  height: MSize.h(1),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
