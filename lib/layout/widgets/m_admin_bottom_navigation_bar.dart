import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/layout/widgets/m_bottom_navigation_bar_item.dart';
import 'package:permission_handler/permission_handler.dart';

class MAdminBottomNavigationBar extends StatefulWidget {
  const MAdminBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.items,
    this.onTap,
  });

  final int currentIndex;
  final List<BottomNavigationBarItem> items;
  final ValueChanged<int>? onTap;

  @override
  State<MAdminBottomNavigationBar> createState() =>
      MAdminBottomNavigationBarState();
}

class MAdminBottomNavigationBarState extends State<MAdminBottomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    final List<Widget> tiles = <Widget>[];

    for (var i = 0; i < 4; i++) {
      if (i == 2) {
        tiles.add(
          MBottomNavigationBarItem(
            selected: false,
            onTap: () => onCreateBroadcast(context),
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
      height: MSize.h(90),
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

  Future<void> onCreateBroadcast(BuildContext context) async {
    final isAndroid = Theme.of(context).platform == TargetPlatform.android;

    if (isAndroid) {
      final scaffoldContext = ScaffoldMessenger.of(context);
      final status = await Permission.microphone.request();
      if (status.isGranted || status.isLimited) {
        if (context.mounted) {
          AutoRouter.of(context).push(const CreateBroadcastRoute());
          // showModalBottomSheet(
          //   context: context,
          //   isScrollControlled: true,
          //   elevation: 0,
          //   builder: (context) => const StartBroadcastBottomSheet(),
          // );
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
    } else {
      AutoRouter.of(context).push(const CreateBroadcastRoute());
    }
  }
}
