import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/start_broadcast_bottom_sheet.dart';
import 'package:meno_fe_v2/layout/widgets/m_bottom_navigation_bar_item.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/role.dart';
import 'package:permission_handler/permission_handler.dart';

class MBottomNavigationBar extends ConsumerStatefulWidget {
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
  ConsumerState<MBottomNavigationBar> createState() =>
      _MBottomNavigationBarState();
}

class _MBottomNavigationBarState extends ConsumerState<MBottomNavigationBar> {
  Future<void> onCreateBroadcast() async {
    final scaffoldContext = ScaffoldMessenger.of(context);

    await [Permission.microphone].request();
    PermissionStatus status = await Permission.microphone.status;

    switch (status) {
      case PermissionStatus.limited:
      case PermissionStatus.granted:
        await Future.delayed(Duration.zero);

        if (context.mounted) {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            elevation: 0,
            builder: (context) => const StartBroadcastBottomSheet(),
          );
        }
        return;
      case PermissionStatus.denied:
      case PermissionStatus.permanentlyDenied:
      case PermissionStatus.restricted:
        scaffoldContext.showSnackBar(
          const SnackBar(
            content: Text('Please allow microphone permission for Meno'),
          ),
        );
        return;
      default:
        return;
    }
  }

  @override
  Widget build(BuildContext context) {
    final role = ref.watch(roleProvider).value;

    final List<Widget> adminTiles = <Widget>[];
    final List<Widget> guestTiles = <Widget>[];

    for (var i = 0; i < 4; i++) {
      if (i == 2) {
        adminTiles.add(
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
      adminTiles.add(
        MBottomNavigationBarItem(
          onTap: () => widget.onTap?.call(i),
          item: widget.items[i],
          selected: i == widget.currentIndex,
        ),
      );
      guestTiles.add(
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
        children: role == Role.admin ? adminTiles : guestTiles,
      ),
    );
  }
}
