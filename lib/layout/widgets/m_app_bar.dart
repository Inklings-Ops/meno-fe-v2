import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MAppBar extends StatelessWidget with PreferredSizeWidget {
  const MAppBar({
    super.key,
    required this.title,
    this.showLeading = false,
  });

  final String title;
  final bool showLeading;

  @override
  Size get preferredSize => Size.fromHeight(MSize.r(kToolbarHeight));

  @override
  Widget build(BuildContext context) {
    Widget titleWidget = AutoSizeText(
      title,
      style: TextStyle(fontWeight: FontWeight.w600, fontSize: MSize.fS(18)),
    );

    return AppBar(
      toolbarHeight: MSize.r(kToolbarHeight),
      // leading: showLeading ? const AutoLeadingButton() : null,
      // leadingWidth: MSize.w(50),
      elevation: 0,
      scrolledUnderElevation: 0,
      centerTitle: true,
      title: titleWidget,
    );
  }
}
