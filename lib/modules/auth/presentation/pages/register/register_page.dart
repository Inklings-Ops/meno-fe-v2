import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/widgets/m_scaffold.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const MScaffold(
      title: 'Register',
      showLeading: true,
      child: Center(
        child: Text('Register Page'),
      ),
    );
  }
}
