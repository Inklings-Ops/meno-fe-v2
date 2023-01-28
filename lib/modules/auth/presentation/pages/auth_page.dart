import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:meno_fe_v2/layout/layout_page.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/presentation/pages/login/login_page.dart';

class AuthPage extends ConsumerWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(authProvider);

    return state.maybeMap(
      orElse: () => const LoadingPage(),
      unauthenticated: (_) => const LoginPage(showLeading: false),
      authenticated: (a) => const LayoutPage(),
    );
  }
}

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Lottie.asset(
          'assets/animations/loading-indicator.json',
          animate: true,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
