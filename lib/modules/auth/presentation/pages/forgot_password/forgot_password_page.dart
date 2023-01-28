import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/common/widgets/m_text_form_field.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MScaffold(
      title: 'Forgot Password',
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            "Please fill in your email address. You will receive a \nlink to create a new password via email.",
            style: TextStyle(
              fontSize: MSize.fS(16),
              fontWeight: FontWeight.w500,
            ),
          ),
          MSize.vS(50),
          Form(
            autovalidateMode: AutovalidateMode.disabled,
            child: MTextFormField(
              label: "Email",
              hint: 'example@gmail.com',
              keyboardType: TextInputType.emailAddress,
              prefixIcon: Icon(MIcons.Message1, size: MSize.r(22)),
              // enabled: false,
            ),
          ),
          MSize.vS(70),
          MButton(
            title: 'Next',
            onPressed: () {
              AutoRouter.of(context).push(const ForgotPasswordOtpRoute());
            },
          ),
        ],
      ),
    );
  }
}
