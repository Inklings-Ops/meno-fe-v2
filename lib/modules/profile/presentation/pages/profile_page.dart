import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_content.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_content_skeleton.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileProvider);

    return state.when(
      loading: () => const ProfileContentSkeleton(),
      authUserLoaded: (profile) => ProfileContent(profile: profile),
      otherUserLoaded: (profile) => const ProfileContentSkeleton(),
      failed: () => const ProfileContentSkeleton(),
    );
  }
}
