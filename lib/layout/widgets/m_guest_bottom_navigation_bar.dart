import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/layout/widgets/m_bottom_navigation_bar_item.dart';

class MGuestBottomNavigationBar extends StatefulWidget {
  const MGuestBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.items,
    this.onTap,
  });

  final int currentIndex;
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int>? onTap;

  @override
  State<MGuestBottomNavigationBar> createState() =>
      _MGuestBottomNavigationBarState();
}

class _MGuestBottomNavigationBarState extends State<MGuestBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> tiles = <Widget>[];

    for (var i = 0; i < 4; i++) {
      tiles.add(
        MBottomNavigationBarItem(
          onTap: () => widget.onTap?.call(i),
          item: widget.items[i],
          selected: i == widget.currentIndex,
        ),
      );
    }

    return Container(
      height: MSize.h(kBottomNavigationBarHeight * 1.4),
      width: MSize.sw(1),
      padding: MSize.pOnly(b: 14),
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
