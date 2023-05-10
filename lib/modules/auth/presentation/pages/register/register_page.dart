import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/register/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MScaffold(
      title: 'Register',
      padding: MSize.pOnly(t: 170),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RegisterForm(),
          MSize.vS(30),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Already have an account? Please ",
                style: textTheme.bodyMedium,
              ),
              MSize.hS(2),
              GestureDetector(
                onTap: () => AutoRouter.of(context).pop(),
                child: Text(
                  "Login",
                  style: textTheme.bodyMedium?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
          MSize.vS(5),
        ],
      ),
    );
  }
}
