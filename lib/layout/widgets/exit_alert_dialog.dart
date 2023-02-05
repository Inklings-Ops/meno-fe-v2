import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';

class ExitAlertDialog extends StatelessWidget {
  const ExitAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowAlignment: OverflowBarAlignment.center,
      alignment: Alignment.center,
      title: Text(
        'Exit Meno?',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: MSize.fS(24),
        ),
      ),
      actions: [
        MButton(
          title: 'Exit',
          onPressed: () => AutoRouter.of(context).pop(true),
          fixedSize: Size(MSize.w(255), MSize.h(43)),
          color: const Color(0xFFDF0201),
          titleColor: Colors.white,
        ),
        TextButton(
          onPressed: () => AutoRouter.of(context).pop(false),
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
    );
  }
}
