import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final router = AutoRouter.of(context);

    return MScaffold(
      title: "Settings",
      padding: MSize.pOnly(t: 250),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SettingsListItem(
              leadingIcon: MIcons.ShieldDone1,
              title: 'Security',
              onTap: () => router.push(const SecurityRoute()),
            ),
            MSize.vS(15),
            SettingsListItem(
              leadingIcon: MIcons.InfoCircle1,
              title: 'About',
              onTap: () => router.push(const AboutRoute()),
            ),
            MSize.vS(15),
            const SettingsListItem(
              leadingIcon: MIcons.InfoSquare1,
              title: 'Delete Account',
              tileColor: Color.fromRGBO(244, 67, 54, 0.2),
              titleColor: Colors.red,
              iconColor: Colors.red,
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
    return Container(
      alignment: Alignment.center,
      height: MSize.h(54),
      child: ListTile(
        onTap: onTap,
        dense: true,
        leading:
            leadingIcon != null ? Icon(leadingIcon, size: MSize.fS(20)) : null,
        title: Text(
          title,
          style: TextStyle(fontSize: MSize.fS(14), color: titleColor),
        ),
        trailing: Icon(MIcons.ArrowRight4, size: MSize.fS(16)),
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
