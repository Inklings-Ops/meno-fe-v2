import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_text_button.dart';
import 'package:meno_fe_v2/modules/auth/application/verification/verification_notifier.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerificationForm extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  VerificationForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = Theme.of(context);

    final state = ref.watch(verificationProvider);
    final event = ref.watch(verificationProvider.notifier);
    // final authEvent = ref.watch(authProvider.notifier);

    ref.listen<VerificationState>(verificationProvider, (previous, next) {
      next.option.fold(
        () => null,
        (either) => either.fold(
          (failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(failure.maybeMap(
                  orElse: () => '',
                  message: (m) => m.message,
                  serverError: (_) => 'Server error. Try again',
                )),
              ),
            );
          },
          (success) {
            ScaffoldMessenger.of(context).clearMaterialBanners();
            // authEvent.checkVerified();
          },
        ),
      );
    });

    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        children: [
          PinCodeTextField(
            autoFocus: true,
            appContext: context,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            length: 4,
            enabled: !state.loading,
            onChanged: (p) => event.otpChanged(p),
            validator: (_) => state.otp.value.fold(
              (f) => f.mapOrNull(
                empty: (_) => 'Please enter the code sent to your email',
              ),
              (_) => null,
            ),
            backgroundColor: Colors.transparent,
            keyboardType: TextInputType.number,
            enableActiveFill: false,
            textStyle: TextStyle(
              fontSize: MSize.fS(24),
              fontWeight: FontWeight.bold,
            ),
            pinTheme: PinTheme(
              shape: PinCodeFieldShape.box,
              borderRadius: BorderRadius.circular(MSize.r(8)),
              fieldWidth: MSize.r(79),
              fieldHeight: MSize.r(86),
              borderWidth: MSize.r(1),
              activeColor: theme.primaryColor,
              selectedColor: theme.primaryColor,
              inactiveColor: const Color(0xff9D9D9D),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Didn't receive any code?"),
              MSize.hS(4),
              MTextButton(
                title: 'Request again',
                onPressed: () {},
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
          MSize.vS(30),
          MButton(
            title: 'Continue',
            loading: state.loading,
            disabled: !state.otp.isValid(),
            onPressed: () {
              if (formKey.currentState!.validate()) {
                event.verifyPressed();
              }
            },
          ),
        ],
      ),
    );
  }
}
