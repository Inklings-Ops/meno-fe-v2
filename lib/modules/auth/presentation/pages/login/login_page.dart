import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/login/login_form.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key, this.showLeading = true});
  final bool showLeading;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;
    final redirectStyle = isTablet ? textTheme.bodyLarge : textTheme.bodyMedium;

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
              Text("Don't have an account?", style: redirectStyle),
              MSize.hS(2),
              GestureDetector(
                onTap: () => AutoRouter.of(context).push(const RegisterRoute()),
                child: Text(
                  'Create one',
                  style: redirectStyle?.copyWith(
                    color: Theme.of(context).primaryColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
