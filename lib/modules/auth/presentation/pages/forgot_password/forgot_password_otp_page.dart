import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class ForgotPasswordOtpPage extends StatelessWidget {
  const ForgotPasswordOtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;

    final GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return MScaffold(
      title: 'Forgot Password',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Check Your Email',
            style: textTheme.titleLarge?.copyWith(
              fontWeight: FontWeight.bold,
            ),
          ),
          MSize.vS(10),
          RichText(
            text: TextSpan(
              style: textTheme.bodyLarge?.copyWith(color: Colors.black),
              children: const [
                TextSpan(
                  text: 'Enter the 4-digit code we sent to ',
                  style: TextStyle(color: Colors.black45),
                ),
                TextSpan(
                  text: 'mimiokigbo@gmail.com ',
                  style: TextStyle(
                    color: Colors.black,
                  ),
                ),
                TextSpan(
                  text: 'to continue.',
                  style: TextStyle(color: Colors.black45),
                ),
              ],
            ),
          ),
          MSize.vS(40),
          Form(
            key: formKey,
            autovalidateMode: AutovalidateMode.disabled,
            child: PinCodeTextField(
              appContext: context,
              length: 4,
              onChanged: (v) {},
              backgroundColor: Colors.transparent,
              keyboardType: TextInputType.number,
              enableActiveFill: false,
              textStyle: textTheme.titleLarge?.copyWith(
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
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Didn't receive any code?", style: textTheme.bodyMedium),
              MSize.hS(2),
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Request again",
                  style: textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          MSize.vS(30),
          MButton(
            title: 'Continue',
            onPressed: () => AutoRouter.of(context).replaceAll([
              const ResetPasswordRoute(),
            ]),
          ),
        ],
      ),
    );
  }
}
