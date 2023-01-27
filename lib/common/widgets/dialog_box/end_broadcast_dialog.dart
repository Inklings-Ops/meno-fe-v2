import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';

class EndBroadcastDialog extends StatelessWidget {
  const EndBroadcastDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(MSize.r(30)),
      ),
      child: SizedBox(
        height: MSize.h(232),
        width: MSize.w(327),
        child: Column(
          children: [
            MSize.vS(42),
            Text(
              'Stop broadcasting?',
              style: TextStyle(
                fontSize: MSize.fS(24),
                fontWeight: FontWeight.w600,
              ),
            ),
            MSize.vS(44),
            MButton(
              title: 'Stop',
              onPressed: () => context.router.pop(true),
              fixedSize: Size(MSize.w(255), MSize.h(43)),
              color: const Color(0xFFDF0201),
              titleColor: Colors.white,
            ),
            MSize.vS(18),
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
          ],
        ),
      ),
    );
  }
}
