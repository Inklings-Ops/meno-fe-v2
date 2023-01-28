import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_text_button.dart';
import 'package:meno_fe_v2/common/widgets/m_text_form_field.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/application/login/login_notifier.dart';

class LoginForm extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();
  LoginForm({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(loginProvider);
    final event = ref.watch(loginProvider.notifier);
    final authEvent = ref.watch(authProvider.notifier);

    ref.listen<LoginState>(loginProvider, (previous, next) {
      next.option.fold(
        () => null,
        (a) => a.fold(
          (l) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(l.maybeMap(
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
            authEvent.checkVerified();
          },
        ),
      );
    });

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          MTextFormField(
            label: "Email",
            hint: 'example@gmail.com',
            keyboardType: TextInputType.emailAddress,
            prefixIcon: Icon(MIcons.Message1, size: MSize.r(22)),
            enabled: !state.loading,
            onChanged: (e) => event.emailChanged(e),
            validator: (_) => state.email.value.fold(
              (f) => f.mapOrNull(
                invalidEmail: (_) => 'Please type a valid email address',
                empty: (_) => 'This field cannot be empty',
              ),
              (_) => null,
            ),
          ),
          MSize.vS(20),
          MTextFormField(
            label: "Be Secure",
            isPassword: true,
            hint: 'Enter your password',
            prefixIcon: Icon(MIcons.Password1, size: MSize.r(22)),
            enabled: !state.loading,
            onChanged: (e) => event.passwordChanged(e),
            validator: (_) => state.password.value.fold(
              (f) => f.mapOrNull(empty: (_) => 'This field cannot be empty'),
              (_) => null,
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: MTextButton(
              title: 'Forgot Password?',
              onPressed: () {},
              // onPressed: () => context.router.push(const ForgotPasswordRoute()),
            ),
          ),
          MSize.vS(30),
          MButton(
            title: 'Login',
            loading: state.loading,
            disabled: !state.email.isValid() || state.password.get() == null,
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
