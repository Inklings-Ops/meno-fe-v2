import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';

class ResetPasswordFeedbackPage extends StatelessWidget {
  const ResetPasswordFeedbackPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: Padding(
        padding: MSize.pSymmetric(h: 16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/images/reset-password/password_reset_success.png",
              height: MSize.r(200),
              width: MSize.r(200),
            ),
            MSize.vS(70),
            Text(
              'Success!',
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            MSize.vS(6),
            Padding(
              padding: MSize.pSymmetric(h: 60),
              child: Text(
                'Your password has been reset Mimi. Phew! That was a close one',
                textAlign: TextAlign.center,
                style: textTheme.bodyLarge,
              ),
            ),
            MSize.vS(100),
            MButton(
              title: 'Go back to Login',
              onPressed: () {
                AutoRouter.of(context).replaceAll([LoginRoute()]);
              },
            ),
          ],
        ),
      ),
    );
  }
}
