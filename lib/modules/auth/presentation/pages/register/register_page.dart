import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_google_button.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/register/register_form.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MScaffold(
      title: 'Register',
      padding: MSize.pOnly(t: 170),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          RegisterForm(),
          MSize.vS(15),
          Text(
            'or',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: MSize.fS(16),
              color: const Color(0xff9d9d9d),
            ),
          ),
          MSize.vS(15),
          const MGoogleButton('Create with Google', isRegister: true),
          MSize.vS(50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text("Already have an account? Please "),
              GestureDetector(
                onTap: () => AutoRouter.of(context).pop(),
                child: Text(
                  "Login",
                  style: TextStyle(
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
