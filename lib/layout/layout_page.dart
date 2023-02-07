import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/layout/widgets/bible_app_bar.dart';
import 'package:meno_fe_v2/layout/widgets/exit_alert_dialog.dart';
import 'package:meno_fe_v2/layout/widgets/m_app_bar.dart';
import 'package:meno_fe_v2/layout/widgets/m_bottom_navigation_bar.dart';
import 'package:phosphor_flutter/phosphor_flutter.dart';

const items = [
  BottomNavigationBarItem(label: 'Home', icon: Icon(PhosphorIcons.houseSimple)),
  BottomNavigationBarItem(label: 'Bible', icon: Icon(PhosphorIcons.book)),
  BottomNavigationBarItem(label: 'Read', icon: Icon(PhosphorIcons.eyeglasses)),
  BottomNavigationBarItem(label: 'Notes', icon: Icon(PhosphorIcons.notepad)),
];

const routes = [HomeRoute(), BibleRoute(), DevotionalRoute(), NotesRoute()];

class LayoutPage extends StatelessWidget {
  const LayoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future<bool> onExit() async {
      return await showDialog(
        context: context,
        builder: (context) => const ExitAlertDialog(),
      );
    }

    return WillPopScope(
      onWillPop: onExit,
      child: AutoTabsScaffold(
        scaffoldKey: MKeys.layoutScaffoldKey,
        routes: routes,
        appBarBuilder: (context, tabsRouter) {
          if (tabsRouter.activeIndex == 1) {
            return BibleAppBar(
              title: tabsRouter.current.name.split('R')[0],
            );
          }

          return MAppBar(
            title: tabsRouter.current.name.split('R')[0],
            showLeading: false,
          );
        },
        bottomNavigationBuilder: (context, tabsRouter) => MBottomNavigationBar(
          currentIndex: tabsRouter.activeIndex,
          onTap: tabsRouter.setActiveIndex,
          items: items,
        ),
      ),
    );
  }
}
