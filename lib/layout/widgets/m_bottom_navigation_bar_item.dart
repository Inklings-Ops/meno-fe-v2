import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MBottomNavigationBarItem extends StatelessWidget {
  const MBottomNavigationBarItem({
    super.key,
    required this.item,
    this.indexLabel,
    required this.onTap,
    required this.selected,
  });

  final BottomNavigationBarItem item;
  final String? indexLabel;
  final VoidCallback onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final colorScheme = theme.colorScheme;

    final itemColor = selected
        ? theme.bottomNavigationBarTheme.selectedItemColor
        : theme.bottomNavigationBarTheme.unselectedItemColor;

    final String? effectiveTooltip =
        item.tooltip == '' ? null : item.tooltip ?? item.label;

    Widget result = GestureDetector(
      onTap: onTap,
      child: item.label == 'Create'
          ? CircleAvatar(
              radius: MSize.r(30),
              backgroundColor: colorScheme.primary,
              child: IconTheme(
                data: IconThemeData(
                  color: colorScheme.onPrimary,
                  size: MSize.r(30),
                ),
                child: item.icon,
              ),
            )
          : Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconTheme(
                  data: IconThemeData(color: itemColor),
                  child: item.icon,
                ),
                Text(
                  item.label!,
                  style: textTheme.labelLarge?.copyWith(color: itemColor),
                )
              ],
            ),
    );

    if (effectiveTooltip != null) {
      result = Tooltip(
        message: effectiveTooltip,
        preferBelow: false,
        verticalOffset: MSize.r(50),
        excludeFromSemantics: true,
        child: result,
      );
    }

    result = Semantics(
      selected: selected,
      container: true,
      child: Stack(
        children: <Widget>[
          result,
          Semantics(
            label: indexLabel,
          ),
        ],
      ),
    );

    return result;
  }
}
