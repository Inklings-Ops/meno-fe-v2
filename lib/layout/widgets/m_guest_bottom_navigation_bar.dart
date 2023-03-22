import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/start_broadcast_bottom_sheet.dart';
import 'package:meno_fe_v2/layout/widgets/m_bottom_navigation_bar_item.dart';
import 'package:permission_handler/permission_handler.dart';

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

  Future<void> onCreateBroadcast(BuildContext context) async {
    final scaffoldContext = ScaffoldMessenger.of(context);

    final status = await Permission.microphone.request();
    if (status.isGranted || status.isLimited) {
      if (context.mounted) {
        showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          elevation: 0,
          builder: (context) => const StartBroadcastBottomSheet(),
        );
      }
    } else if (status == PermissionStatus.permanentlyDenied) {
      openAppSettings();
    } else {
      scaffoldContext.showSnackBar(
        const SnackBar(
          content: Text('Please allow microphone permission for Menō'),
        ),
      );
    }
  }
}
