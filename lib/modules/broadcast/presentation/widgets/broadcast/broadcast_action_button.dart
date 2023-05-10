import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class BroadcastActionButton extends StatelessWidget {
  const BroadcastActionButton({
    super.key,
    required this.onTap,
    required this.color,
    required this.icon,
    required this.title,
    this.loading = false,
  });

  final void Function()? onTap;
  final Color color;
  final IconData icon;
  final String title;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          Container(
            height: MSize.r(47),
            width: MSize.r(47),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: onTap == null
                  ? MColors.disabled.withOpacity(0.1)
                  : color.withOpacity(0.1),
            ),
            child: loading
                ? Padding(
                    padding: MSize.pAll(14.0),
                    child: CircularProgressIndicator(strokeWidth: MSize.r(2)),
                  )
                : Icon(icon, color: onTap == null ? MColors.disabled : color),
          ),
          MSize.vS(6),
          Text(
            title,
            style: textTheme.labelLarge?.copyWith(
              color: onTap == null ? MColors.disabled : const Color(0xFFA4A4A4),
              fontWeight: FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
