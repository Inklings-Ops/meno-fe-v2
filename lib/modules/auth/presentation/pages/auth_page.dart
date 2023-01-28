// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:meno_fe_v2/layout/layout_page.dart';
// import 'package:meno_fe_v2/layout/loading_page.dart';
// import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
// import 'package:meno_fe_v2/modules/auth/presentation/pages/login/login_page.dart';
// import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_feedback_page.dart';
// import 'package:meno_fe_v2/modules/auth/presentation/pages/verification/verification_page.dart';

// class AuthPage extends ConsumerWidget {
//   const AuthPage({super.key, this.showLeading = false});

//   final bool showLeading;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final state = ref.watch(authProvider);

//     return state.maybeMap(
//       orElse: () => const LoadingPage(),
//       verified: (_) => const VerificationFeedbackPage(),
//       unverified: (_) => const VerificationPage(),
//       unauthenticated: (_) => LoginPage(showLeading: showLeading),
//       authenticated: (a) => const LayoutPage(),
//     );
//   }
// }
