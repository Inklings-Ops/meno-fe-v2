import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_container.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_title.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';

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
            borderRadius: BorderRadius.vertical(
              top: Radius.circular(MSize.r(16)),
            ),
            onTap: () => AutoRouter.of(context).push(
              const CreateBroadcastRoute(),
            ),
          ),
          const Divider(height: 2),
          MBottomSheetTile(
            icon: MIcons.TimeCircle,
            title: 'Schedule for later',
            borderRadius: BorderRadius.vertical(
              bottom: Radius.circular(MSize.r(16)),
            ),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
