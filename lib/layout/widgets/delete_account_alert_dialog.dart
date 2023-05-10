import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class DeleteAccountAlertDialog extends StatelessWidget {
  const DeleteAccountAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    return Dialog(
      backgroundColor: Colors.white,
      surfaceTintColor: Colors.white,
      alignment: Alignment.center,
      child: SizedBox(
        child: Column(
          children: [
            Text(
              'Delete Menō Account?',
              textAlign: TextAlign.center,
              style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
            ),
            Text(
              'You are about to delete your account? \nThis cannot be undone.',
              textAlign: TextAlign.center,
              style: textTheme.titleMedium,
            ),
            TextButton(
              onPressed: () => AutoRouter.of(context).pop(false),
              style: TextButton.styleFrom(
                backgroundColor: Colors.red,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(MSize.r(10)),
                ),
                padding: MSize.pSymmetric(h: 16, v: 8),
                textStyle: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              child: const Text('Yes Delete'),
            ),
            // MSize.vS(20),
            TextButton(
              onPressed: () => AutoRouter.of(context).pop(false),
              style: TextButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(MSize.r(10)),
                ),
                foregroundColor: Colors.black,
                padding: MSize.pSymmetric(h: 16, v: 8),
                textStyle: textTheme.titleMedium?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
              child: const Text('Cancel'),
            )
          ],
        ),
      ),
    );
  }
}
