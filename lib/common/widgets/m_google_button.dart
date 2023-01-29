import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/auth/application/login/login_notifier.dart';
import 'package:meno_fe_v2/modules/auth/application/login_return/login_return_notifier.dart';
import 'package:meno_fe_v2/modules/auth/application/register/register_notifier.dart';

class MGoogleButton extends ConsumerWidget {
  const MGoogleButton(
    this.title, {
    Key? key,
    this.isRegister = false,
  }) : super(key: key);

  final String title;
  final bool isRegister;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loginState = ref.watch(loginProvider);
    final loginReturnState = ref.watch(loginReturnProvider);
    final registerState = ref.watch(registerProvider);
    final loginEvent = ref.watch(loginProvider.notifier);
    final registerEvent = ref.watch(registerProvider.notifier);

    return OutlinedButton(
      onPressed: loginState.loading ||
              loginReturnState.loading ||
              registerState.loading
          ? null
          : () {
              if (isRegister) {
                registerEvent.googleRegisterPressed();
              } else {
                loginEvent.googleLoginPressed();
              }
            },
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFF131313)),
      ),
      child: loginState.googleButtonLoading || registerState.googleButtonLoading
          ? SizedBox.fromSize(
              size: Size(MSize.sw(1), MSize.h(53)),
              child: Lottie.asset(
                'assets/animations/loading-indicator.json',
                animate: true,
                fit: BoxFit.fill,
              ),
            )
          : Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SvgPicture.asset(
                  'assets/images/google_icon.svg',
                  semanticsLabel: 'google icon',
                ),
                MSize.hS(10),
                Text(
                  title,
                  style: TextStyle(
                    fontSize: MSize.fS(16),
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff131313),
                  ),
                )
              ],
            ),
    );
  }
}
