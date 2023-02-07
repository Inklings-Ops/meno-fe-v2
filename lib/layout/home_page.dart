import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/layout/widgets/discover_meno_section.dart';
import 'package:meno_fe_v2/layout/widgets/now_live_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.goToBible});
  final void Function() goToBible;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: MSize.pOnly(b: 20),
      child: Column(
        children: [
          const DiscoverMenoSection(),
          MSize.vS(30),
          ReadSection(goToBible: goToBible),
          MSize.vS(30),
          const NowLiveSection(),
        ],
      ),
    );
  }
}
