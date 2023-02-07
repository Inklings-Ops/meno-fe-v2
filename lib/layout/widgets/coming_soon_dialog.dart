import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class ComingSoonDialog extends StatelessWidget {
  const ComingSoonDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      actionsAlignment: MainAxisAlignment.center,
      actionsOverflowAlignment: OverflowBarAlignment.center,
      alignment: Alignment.center,
      title: Text(
        'Coming Soon!',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: MSize.fS(24),
        ),
      ),
      content: Text(
        'This feature will be available in the coming versions of Meno',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: MSize.fS(16),
          fontWeight: FontWeight.w600,
          color: Colors.black87,
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => AutoRouter.of(context).pop(),
          child: Text(
            'Close',
            style: TextStyle(
              fontSize: MSize.fS(16),
              fontWeight: FontWeight.w600,
              color: MColors.danger,
            ),
          ),
        ),
      ],
    );
  }
}
