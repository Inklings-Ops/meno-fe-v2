import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_container.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_title.dart';

class StartBroadcastBottomSheet extends StatelessWidget {
  const StartBroadcastBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return MBottomSheetContainer(
      child: Wrap(
        children: [
          MBottomSheetTile(
            icon: MIcons.Voice2,
            title: 'Start broadcast now',
            onTap: () {},
            // onTap: () => context.router.push(const CreateBroadcastRoute()),
          ),
          const Divider(),
          MBottomSheetTile(
            icon: MIcons.TimeCircle1,
            title: 'Schedule for later',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
