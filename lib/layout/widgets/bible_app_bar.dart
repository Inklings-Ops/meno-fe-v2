import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/scripture_selector.dart';

class BibleAppBar extends StatelessWidget with PreferredSizeWidget {
  const BibleAppBar({super.key, required this.title});

  final String title;

  @override
  Size get preferredSize => Size.fromHeight(MSize.r(90));

  @override
  Widget build(BuildContext context) {
    Widget titleWidget = AutoSizeText(
      title,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: MSize.fS(18)),
    );

    return AppBar(
      toolbarHeight: MSize.r(90),
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      title: titleWidget,
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(MSize.h(0)),
        child: const ScriptureSelector(),
      ),
    );
  }
}
