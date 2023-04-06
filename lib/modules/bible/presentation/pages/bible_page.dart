import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/bible_reader.dart';

class BiblePage extends StatelessWidget {
  const BiblePage({super.key, this.scrollController});
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      controller: scrollController,
      padding: MSize.pOnly(t: kToolbarHeight * 2.2),
      child: const BibleReader(),
    );
  }
}
