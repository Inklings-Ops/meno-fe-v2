import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/modules/auth/application/verification/verification_notifier.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/verification/verification_form.dart';

class VerificationPage extends ConsumerWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(verificationProvider);
    final textTheme = Theme.of(context).textTheme;

    return MScaffold(
      title: 'Verify your Email',
      showLeading: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Check Your Email',
            style: textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600),
          ),
          MSize.vS(10),
          RichText(
            text: TextSpan(
              style: textTheme.bodyLarge?.copyWith(color: Colors.black),
              children: [
                const TextSpan(
                  text: 'Enter the 4-digit code we sent to ',
                  style: TextStyle(color: Colors.black45),
                ),
                TextSpan(
                  text: '${state.email.get()} ',
                  style: const TextStyle(color: Colors.black),
                ),
                const TextSpan(
                  text: 'to continue.',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
          ),
          MSize.vS(40),
          VerificationForm(),
        ],
      ),
    );
  }
}
