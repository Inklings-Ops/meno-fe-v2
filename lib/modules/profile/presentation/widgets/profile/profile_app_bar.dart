import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';

class ProfileAppBar extends ConsumerWidget {
  const ProfileAppBar({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final event = ref.watch(authProvider.notifier);

    return AppBar(
      toolbarHeight: MSize.r(kToolbarHeight),
      backgroundColor: Colors.transparent,
      surfaceTintColor: Colors.transparent,
      systemOverlayStyle: const SystemUiOverlayStyle(
        statusBarBrightness: Brightness.dark,
      ),
      scrolledUnderElevation: 0,
      leading: Center(
        child: GestureDetector(
          onTap: () => AutoRouter.of(context).push(const SettingsRoute()),
          child: Container(
            height: MSize.r(32),
            width: MSize.r(32),
            margin: MSize.pOnly(l: 16),
            alignment: Alignment.center,
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              color: Color.fromRGBO(54, 0, 144, 0.1),
            ),
            child: Icon(
              MIcons.Setting1,
              size: MSize.r(22),
              color: const Color.fromRGBO(54, 0, 144, 1),
            ),
          ),
        ),
      ),
      actions: [
        Center(
          child: GestureDetector(
            onTap: () => event.logoutPartially(),
            child: Container(
              height: MSize.r(32),
              width: MSize.r(32),
              margin: MSize.pOnly(r: 16),
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Color.fromRGBO(223, 2, 1, 0.1),
              ),
              child: Icon(
                MIcons.Logout1,
                size: MSize.r(19),
                color: const Color.fromRGBO(223, 2, 1, 1),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
