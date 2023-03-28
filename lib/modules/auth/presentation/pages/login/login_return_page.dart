import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/login/login_return_form.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/login/returning_user_details.dart';

class LoginReturnPage extends StatelessWidget {
  const LoginReturnPage({super.key, this.showLeading = false});

  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    return MScaffold(
      title: "Login",
      showLeading: showLeading,
      padding: MSize.pOnly(t: 250),
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const ReturningUserDetails(),
            LoginReturnForm(),
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
      ),
    );
  }
}
