import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/listener_counter.dart';

class BroadcastNestedTabBar extends HookConsumerWidget {
  const BroadcastNestedTabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(broadcastProvider);
    final controller = useTabController(initialLength: 2);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: MSize.h(30),
          child: TabBar(
            controller: controller,
            indicatorSize: TabBarIndicatorSize.label,
            labelStyle: TextStyle(
              fontSize: MSize.fS(14),
              color: Colors.black,
            ),
            labelPadding: EdgeInsets.zero,
            indicatorPadding: EdgeInsets.zero,
            indicatorColor: Colors.black,
            indicatorWeight: MSize.r(0.6),
            padding: EdgeInsets.zero,
            tabs: [
              SizedBox(
                width: MSize.w(60),
                child: const Tab(text: 'Co-host(s)'),
              ),
              SizedBox(
                width: MSize.w(110),
                child: Tab(
                  child: ListenerCounter(
                    broadcast: state.broadcast,
                    fontSize: MSize.fS(16),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          padding: MSize.pAll(16),
          height: MSize.h(350),
          width: MSize.sw(1),
          child: TabBarView(
            controller: controller,
            children: const [
              Text('Co-host(s)'),
              Text('Listeners'),
            ],
          ),
        ),
      ],
    );
  }
}
