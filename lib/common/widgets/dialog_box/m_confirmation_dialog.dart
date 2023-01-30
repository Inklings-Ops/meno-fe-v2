import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';

class MConfirmationDialog extends StatelessWidget {
  const MConfirmationDialog({
    super.key,
    this.title = 'Stop broadcasting?',
    this.buttonTitle = 'Stop',
  });

  final String title;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      surfaceTintColor: Colors.white,
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MSize.r(30)),
      ),
      child: SizedBox(
        height: MSize.h(232),
        width: MSize.w(327),
        child: Column(
          children: [
            MSize.vS(44),
            Text(
              title,
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: MSize.fS(24),
              ),
            ),
            MSize.vS(20),
            MButton(
              title: buttonTitle,
              onPressed: () => context.router.pop(true),
              fixedSize: Size(MSize.w(255), MSize.h(43)),
              color: const Color(0xFFDF0201),
              titleColor: Colors.white,
            ),
            TextButton(
              onPressed: context.router.pop,
              child: Text(
                'Cancel',
                style: TextStyle(
                  fontSize: MSize.fS(16),
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
