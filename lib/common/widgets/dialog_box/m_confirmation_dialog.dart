import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';

class MConfirmationDialog extends StatelessWidget {
  const MConfirmationDialog({
    super.key,
    this.title = 'Stop broadcasting?',
    this.content,
    this.buttonTitle = 'Stop',
  });

  final String title;
  final String? content;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;

    final titleStyle = isTablet ? textTheme.displaySmall : textTheme.titleLarge;
    final cancelStyle = isTablet ? textTheme.titleLarge : textTheme.labelLarge;

    return AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowAlignment: OverflowBarAlignment.center,
      alignment: Alignment.center,
      title: Text(
        title,
        textAlign: TextAlign.center,
        style: titleStyle?.copyWith(fontWeight: FontWeight.w600),
      ),
      actions: [
        if (content != null) ...[
          MSize.vS(10),
          Text(
            content!,
            style: textTheme.bodyMedium,
            textAlign: TextAlign.center,
          ),
          MSize.vS(14),
        ],
        MButton(
          title: buttonTitle,
          onPressed: () => context.router.pop(true),
          fixedSize: Size(MSize.w(255), MSize.h(43)),
          color: const Color(0xFFDF0201),
          titleColor: Colors.white,
        ),
        MSize.vS(4),
        TextButton(
          onPressed: () => AutoRouter.of(context).pop(false),
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: cancelStyle,
          ),
          child: const Text('Cancel'),
        )
      ],
    );
  }
}
