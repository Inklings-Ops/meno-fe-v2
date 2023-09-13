import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';

class BroadcastDetailsActionButtons extends HookConsumerWidget {
  const BroadcastDetailsActionButtons({super.key, required this.broadcast});

  final Broadcast broadcast;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentUser = ref.watch(currentUserProvider).value;
    final broadcastEvent = ref.watch(broadcastProvider.notifier);

    final isCreatorIsCurrentUser = currentUser?.id == broadcast.creator?.id;

    final loading = useState<bool>(false);

    ref.listen<BroadcastState>(broadcastProvider, (previous, next) {
      next.joinedOption.fold(
        () => null,
        (either) => either.fold(
          (l) => ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(l.maybeMap(
                orElse: () => '',
                message: (value) => value.message,
                serverError: (_) => 'Server error',
              )),
            ),
          ),
          (success) {
            ScaffoldMessenger.of(context).clearSnackBars();
            AutoRouter.of(context).push(StreamRoute(joinedBroadcast: success));
            loading.value = false;
          },
        ),
      );
    });

    return SizedBox(
      height: MSize.h(30),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: LimitedBox(
              maxHeight: MSize.h(30),
              child: TextButton(
                onPressed: isCreatorIsCurrentUser || loading.value
                    ? null
                    : () {
                        loading.value = true;
                        broadcastEvent.joinPressed(
                          broadcastId: broadcast.id,
                          context: context,
                        );
                      },
                style: TextButton.styleFrom(
                  backgroundColor: MColors.primary,
                  foregroundColor: Colors.white,
                  fixedSize: Size(MSize.w(83), MSize.h(30)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(MSize.r(8)),
                  ),
                ),
                child: Text(loading.value ? 'Loading...' : 'Join'),
              ),
            ),
          ),
          if (isCreatorIsCurrentUser) ...[
            MSize.hS(8),
            Expanded(
              child: LimitedBox(
                maxHeight: MSize.h(30),
                child: TextButton(
                  onPressed: () {
                    ref
                        .read(socketDataProvider.notifier)
                        .endBroadcast(broadcast.id);
                    Navigator.pop(context);
                  },
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    foregroundColor: Colors.white,
                    fixedSize: Size(MSize.w(83), MSize.h(30)),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MSize.r(8)),
                    ),
                  ),
                  child: const Text('End'),
                ),
              ),
            ),
          ] else
            const Spacer(),
        ],
      ),
    );
  }
}
