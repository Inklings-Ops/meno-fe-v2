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
    final cancelStyle = isTablet ? textTheme.titleLarge : textTheme.titleMedium;

    return Dialog(
      surfaceTintColor: Colors.white,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MSize.r(30)),
      ),
      child: Container(
        padding: MSize.pSymmetric(h: 20),
        width: MSize.sw(0.9),
        height: MSize.h(232),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MSize.vS(20),
            Text(
              title,
              style: titleStyle?.copyWith(fontWeight: FontWeight.w600),
            ),
            if (content != null) ...[
              MSize.vS(20),
              Text(
                content!,
                style: textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
            ],
            MSize.vS(20),
            MButton(
              title: buttonTitle,
              onPressed: () => context.router.pop(true),
              fixedSize: Size(MSize.sw(1), MSize.h(43)),
              color: const Color(0xFFDF0201),
              titleColor: Colors.white,
            ),
            MSize.vS(10),
            TextButton(
              onPressed: context.router.pop,
              style: TextButton.styleFrom(
                fixedSize: Size(MSize.w(200), MSize.h(43)),
                foregroundColor: Colors.black,
                textStyle: cancelStyle?.copyWith(fontWeight: FontWeight.w600),
              ),
              child: const Text('Cancel'),
            ),
          ],
        ),
      ),
    );
  }
}
