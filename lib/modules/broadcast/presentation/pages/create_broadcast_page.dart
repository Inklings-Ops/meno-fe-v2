import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/create_broadcast/create_broadcast_form.dart';

class CreateBroadcastPage extends ConsumerWidget {
  const CreateBroadcastPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final networkEvent = ref.watch(networkProvider.notifier);

    // ref.listen<NetworkStatus>(networkProvider, (previous, next) async {
    //   await networkEvent.networkHelperMethod(context, next);
    // });

    return MScaffold(
      title: 'Broadcast \nDetails',
      padding: MSize.pOnly(t: 190, b: 20),
      child: const CreateBroadcastForm(),
    );
  }
}
