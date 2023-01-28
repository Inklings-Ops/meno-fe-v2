import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';

class VerificationFeedbackPage extends ConsumerWidget {
  const VerificationFeedbackPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
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
              style: TextStyle(
                fontSize: MSize.fS(24),
                fontWeight: FontWeight.bold,
              ),
            ),
            MSize.vS(6),
            Padding(
              padding: MSize.pSymmetric(h: 60),
              child: Text(
                'Your email has been verified.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: MSize.fS(16)),
              ),
            ),
            MSize.vS(100),
            MButton(
              title: 'Go home',
              onPressed: () {
                ref.read(authProvider.notifier).checkAuthenticated();
              },
            ),
          ],
        ),
      ),
    );
  }
}
