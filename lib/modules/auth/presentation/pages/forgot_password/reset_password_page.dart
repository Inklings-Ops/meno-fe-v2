import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/common/widgets/m_text_form_field.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/forgot_password/reset_password_header_details.dart';

class ResetPasswordPage extends StatelessWidget {
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MScaffold(
      title: 'Reset Password',
      showLeading: false,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const ResetPasswordUserHeaderDetails(),
          MSize.vS(4),
          Text(
            'Set up a new password to continue \nyour experience',
            style: textTheme.bodyMedium,
          ),
          MSize.vS(36),
          MTextFormField(
            label: "Be Secure",
            isPassword: true,
            hint: 'Enter your password',
            prefixIcon: Icon(MIcons.Password1, size: MSize.r(22)),
          ),
          MSize.vS(4),
          // PasswordRulesWidget(passwordController: passwordController),
          MSize.vS(50),
          MButton(
            title: 'Reset',
            onPressed: () => AutoRouter.of(context).replaceAll([
              const ResetPasswordFeedbackRoute(),
            ]),
          ),
          MSize.vS(30),
        ],
      ),
    );
  }
}
