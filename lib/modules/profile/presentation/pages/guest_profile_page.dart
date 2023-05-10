import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_content.dart';

class GuestProfilePage extends ConsumerWidget {
  const GuestProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileProvider);

    return Scaffold(
      body: state.whenOrNull(
        loading: () => _buildLoadingIndicator(),
        authUserLoaded: (profile) => ProfileContent(profile: profile),
        otherUserLoaded: (profile) => _buildLoadingIndicator(),
        failed: () => _buildLoadingIndicator(),
      ),
    );
  }

  Widget _buildLoadingIndicator() {
    return const Center(child: CircularProgressIndicator());
  }
}
