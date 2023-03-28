import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/login/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, this.showLeading = true});
  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    return MScaffold(
      title: "Logins",
      padding: MSize.pOnly(t: 250),
      showLeading: showLeading,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LoginForm(),
          // MSize.vS(15),
          // const Text('or', textAlign: TextAlign.center),
          // MSize.vS(15),
          // const MGoogleButton('Login with Google'),
          // MSize.vS(30),
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: [
          //     const Text("Don't have an account?"),
          //     MSize.hS(4),
          //     MTextButton(
          //       title: 'Create one',
          //       onPressed: () {
          //         AutoRouter.of(context).push(const RegisterRoute());
          //       },
          //       fontWeight: FontWeight.w600,
          //     ),
          //   ],
          // ),
        ],
      ),
    );
  }
}
