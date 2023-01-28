import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_text_button.dart';
import 'package:meno_fe_v2/common/widgets/m_text_form_field.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/application/login_return/login_return_notifier.dart';

class LoginReturnForm extends HookConsumerWidget {
  final formKey = GlobalKey<FormState>();

  LoginReturnForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginReturnProvider);
    final event = ref.watch(loginReturnProvider.notifier);
    final authEvent = ref.watch(authProvider.notifier);

    useEffect(() {
      final e = ref.read(loginReturnProvider.notifier);
      Future.delayed(const Duration(seconds: 1), () => e.init());
      return;
    }, []);

    ref.listen<LoginReturnState>(loginReturnProvider, (previous, next) {
      next.option.fold(
        () => null,
        (either) => either.fold(
          (failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(failure.maybeMap(
                  orElse: () => '',
                  message: (m) => m.message,
                  serverError: (_) => 'Server error. Try again',
                )),
              ),
            );
          },
          (_) {
            ScaffoldMessenger.of(context).clearSnackBars();
            authEvent.checkAuthenticated();
          },
        ),
      );
    });

    return Form(
      key: formKey,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MTextFormField(
            label: "Be Secure",
            isPassword: true,
            hint: 'Enter your password',
            prefixIcon: Icon(MIcons.Password1, size: MSize.r(22)),
            enabled: !state.loading,
            onChanged: (p) => event.passwordChanged(p),
            validator: (_) => state.password.value.fold(
              (f) => f.mapOrNull(
                empty: (_) => 'This field cannot be empty',
              ),
              (_) => null,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: MTextButton(
              title: 'Forgot Password?',
              onPressed: () {
                AutoRouter.of(context).push(const ForgotPasswordRoute());
              },
            ),
          ),
          MSize.vS(30),
          MButton(
            title: 'Login',
            loading: state.loading,
            disabled: !event.isFormValid,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                event.loginPressed();
              }
            },
          ),
        ],
      ),
    );
  }
}
