import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/home_app_bar.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/live_for_you_section.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      key: MKeys.homeScaffoldKey,
      appBar: const HomeAppBar(),
      body: SingleChildScrollView(
        padding: MSize.pSymmetric(v: 20),
        child: Column(
          children: [
            const LiveForYouSection(),
            MSize.vS(30),

            // const NowLiveSection(),
            // MSize.vS(30),

            // if (model.isFrequent) const RecentlyLiveSection(),
            // 30.verticalSpace,

            // if (model.isFrequent) const ListeningSection(),
          ],
        ),
      ),
    );
  }
}
