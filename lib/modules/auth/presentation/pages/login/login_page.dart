import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/common/widgets/m_text_button.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/login/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, this.showLeading = true});
  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    return MScaffold(
      title: "Login",
      padding: MSize.pOnly(t: 250),
      showLeading: showLeading,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LoginForm(),
          MSize.vS(15),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("Don't have an account?"),
              MSize.hS(4),
              MTextButton(
                title: 'Create one',
                onPressed: () {
                  AutoRouter.of(context).push(const RegisterRoute());
                },
                fontWeight: FontWeight.w600,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
