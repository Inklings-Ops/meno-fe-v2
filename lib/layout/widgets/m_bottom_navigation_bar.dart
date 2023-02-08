import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/layout/widgets/coming_soon_dialog.dart';
import 'package:meno_fe_v2/layout/widgets/m_bottom_navigation_bar_item.dart';

class MBottomNavigationBar extends StatefulWidget {
  const MBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.items,
    this.onTap,
  });

  final int currentIndex;
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int>? onTap;

  @override
  State<MBottomNavigationBar> createState() => _MBottomNavigationBarState();
}

class _MBottomNavigationBarState extends State<MBottomNavigationBar> {
  Future<void> onCreateBroadcast() async {
    await showDialog(
      context: context,
      builder: (context) => const ComingSoonDialog(),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> tiles = <Widget>[];

    for (var i = 0; i < 4; i++) {
      if (i == 2) {
        tiles.add(
          MBottomNavigationBarItem(
            selected: false,
            onTap: onCreateBroadcast,
            item: const BottomNavigationBarItem(
              icon: Icon(MIcons.Voice3),
              label: 'Create',
            ),
          ),
        );
      }
      tiles.add(
        MBottomNavigationBarItem(
          onTap: () => widget.onTap?.call(i),
          item: widget.items[i],
          selected: i == widget.currentIndex,
        ),
      );
    }

    return Container(
      height: MSize.h(94),
      width: MSize.sw(1),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: const Color.fromRGBO(0, 0, 0, 0.1),
            blurRadius: MSize.r(23),
            offset: Offset(0, MSize.h(-2)),
            spreadRadius: MSize.r(-7),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: tiles,
      ),
    );
  }
}
