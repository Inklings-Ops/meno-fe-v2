import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_close_button.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_handle.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/books_list_view.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/chapters_grid.dart';

class ScriptureBottomSheet extends HookWidget {
  const ScriptureBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    final tabController = useTabController(initialLength: 2);

    return Column(
      children: [
        const Align(
          alignment: Alignment.centerRight,
          child: MBottomSheetCloseButton(),
        ),
        Expanded(
          child: Container(
            height: MSize.sh(0.9),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(MSize.r(40)),
              ),
            ),
            child: Column(
              children: [
                MSize.vS(9),
                const MBottomSheetHandle(),
                MSize.vS(26),
                TabBar(
                  controller: tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  labelPadding: EdgeInsets.zero,
                  indicatorColor: Colors.black,
                  indicatorWeight: MSize.r(0.6),
                  dividerColor: const Color.fromRGBO(0, 0, 36, 0.02),
                  padding: EdgeInsets.zero,
                  tabs: <Widget>[
                    SizedBox(
                      height: MSize.h(24),
                      child: const Tab(text: 'BIBLE'),
                    ),
                    SizedBox(
                      height: MSize.h(24),
                      child: const Tab(text: 'CHAPTERS'),
                    ),
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      BooksListView(tabController: tabController),
                      const ChapterGrid(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
