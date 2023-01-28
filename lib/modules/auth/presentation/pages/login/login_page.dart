import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_google_button.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/common/widgets/m_text_button.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/login/login_form.dart';

class LoginPage extends ConsumerWidget {
  final bool showLeading;

  const LoginPage({super.key, this.showLeading = true});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.listen<AuthState>(authProvider, (previous, next) {
      next.maybeMap(
        orElse: () => null,
        unverified: (_) {},
        authenticated: (_) {
          context.router.replaceAll([const LayoutRoute()]);
        },
      );
    });

    return MScaffold(
      title: "Logins",
      padding: MSize.pOnly(t: 250),
      showLeading: showLeading,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          LoginForm(),
          MSize.vS(15),
          const Text('or', textAlign: TextAlign.center),
          MSize.vS(15),
          const MGoogleButton('Login with Google'),
          MSize.vS(30),
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
