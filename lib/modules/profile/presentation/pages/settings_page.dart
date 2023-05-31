import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/layout/widgets/delete_account_alert_dialog.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';

class SettingsPage extends ConsumerWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = AutoRouter.of(context);

    Future<void> onDeleteAccount() async {
      final shouldDelete = await showDialog<bool>(
        context: context,
        builder: (context) => const DeleteAccountAlertDialog(),
      );

      if (shouldDelete == true) {
        ref.read(authProvider.notifier).deleteUser();
      }
    }

    return MScaffold(
      title: "Settings",
      padding: MSize.pOnly(t: 250),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SettingsListItem(
              leadingIcon: MIcons.InfoCircle1,
              title: 'About',
              onTap: () => router.push(const AboutRoute()),
            ),
            MSize.vS(15),
            SettingsListItem(
              leadingIcon: MIcons.InfoSquare1,
              title: 'Delete Account',
              tileColor: const Color.fromRGBO(244, 67, 54, 0.2),
              titleColor: Colors.red,
              iconColor: Colors.red,
              onTap: onDeleteAccount,
            ),
            MSize.vS(15),
          ],
        ),
      ),
    );
  }
}

class SettingsListItem extends StatelessWidget {
  const SettingsListItem({
    super.key,
    this.leadingIcon,
    required this.title,
    this.onTap,
    this.tileColor,
    this.iconColor,
    this.titleColor,
  });

  final IconData? leadingIcon;
  final String title;
  final void Function()? onTap;
  final Color? tileColor;
  final Color? iconColor;
  final Color? titleColor;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      alignment: Alignment.center,
      child: ListTile(
        onTap: onTap,
        dense: true,
        leading: leadingIcon != null ? Icon(leadingIcon) : null,
        title: Text(
          title,
          style: textTheme.bodyLarge?.copyWith(color: titleColor),
        ),
        contentPadding: MSize.pSymmetric(h: 12, v: 2),
        trailing: const Icon(MIcons.ArrowRight4),
        iconColor: iconColor ?? Theme.of(context).primaryColor,
        minLeadingWidth: leadingIcon == null ? 0 : MSize.r(20),
        tileColor: tileColor ?? const Color(0xFFF6F7FB),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MSize.r(10)),
        ),
      ),
    );
  }
}
