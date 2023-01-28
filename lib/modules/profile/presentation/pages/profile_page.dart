import 'package:flutter/material.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile_app_bar.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: ProfileAppBar(),
      body: Center(
        child: Text('Profile Page'),
      ),
    );
  }
}
