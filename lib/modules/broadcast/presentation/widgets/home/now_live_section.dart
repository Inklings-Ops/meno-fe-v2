import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_list.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_list_skeleton.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';

class NowLiveSection extends ConsumerWidget {
  const NowLiveSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final socketState = ref.watch(socketDataProvider);

    return Column(
      children: [
        MSectionTitle(
          title: 'Now Live',
          addSideMargin: true,
          loading: socketState.loading,
        ),
        MSize.vS(6),
        if (socketState.loading || socketState.liveBroadcasts == null)
          const BroadcastListSkeleton()
        else
          BroadcastList(broadcasts: socketState.liveBroadcasts!)
      ],
    );
  }
}
