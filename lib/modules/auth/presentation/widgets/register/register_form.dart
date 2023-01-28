import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_text_form_field.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/application/register/register_notifier.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/otp_type.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/register/password_rules_widget.dart';
import 'package:meno_fe_v2/modules/auth/presentation/widgets/register/upload_image_widget.dart';

class RegisterForm extends ConsumerWidget {
  final formKey = GlobalKey<FormState>();

  RegisterForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(registerProvider);
    final event = ref.watch(registerProvider.notifier);
    final authEvent = ref.watch(authProvider.notifier);

    ref.listen<RegisterState>(registerProvider, (previous, next) {
      next.option.fold(
        () => null,
        (either) => either.fold((failure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(failure.maybeMap(
                orElse: () => '',
                message: (value) => value.message,
                serverError: (_) => 'Server error',
              )),
            ),
          );
        }, (success) {
          ScaffoldMessenger.of(context).clearSnackBars();
          authEvent.requestOTP(OtpType.verifyEmail);
          authEvent.checkAuthenticated();
        }),
      );
    });

    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Align(
            alignment: Alignment.centerRight,
            child: UploadImageWidget(),
          ),
          MSize.vS(20),
          MTextFormField(
            label: "Full Name",
            hint: 'John Doe',
            prefixIcon: Icon(MIcons.Profile1, size: MSize.r(22)),
            enabled: !state.loading,
            onChanged: (p) => event.fullNameChanged(p),
            validator: (_) => state.fullName.value.fold(
              (f) => f.mapOrNull(
                empty: (_) => 'Full Name field cannot be empty',
              ),
              (_) => null,
            ),
          ),
          MSize.vS(10),
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
                empty: (_) => 'Email field cannot be empty',
              ),
              (_) => null,
            ),
          ),
          MSize.vS(10),
          MTextFormField(
            label: "Be Secure",
            isPassword: true,
            hint: 'Enter your password',
            prefixIcon: Icon(MIcons.Password1, size: MSize.r(22)),
            enabled: !state.loading,
            onChanged: (p) => event.passwordChanged(p),
            validator: (_) => state.password.value.fold(
              (f) => f.mapOrNull(
                empty: (_) => 'Password field cannot be empty',
              ),
              (_) => null,
            ),
          ),
          const PasswordRulesWidget(),
          MSize.vS(30),
          MButton(
            title: 'Create Account',
            loading: state.loading,
            disabled: !event.isFormValid,
            onPressed: () {
              if (formKey.currentState!.validate()) {
                event.registerPressed();
              }
            },
          ),
        ],
      ),
    );
  }
}
