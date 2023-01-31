import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_content.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_content_skeleton.dart';

class ProfilePage extends ConsumerStatefulWidget {
  const ProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ProfilePageState();
}

class _ProfilePageState extends ConsumerState<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileProvider);

    return state.when(
      loading: () => const ProfileContentSkeleton(),
      authUserLoaded: (profile) => ProfileContent(profile: profile),
      otherUserLoaded: (profile) => const ProfileContentSkeleton(),
      failed: () => const ProfileContentSkeleton(),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      ref.read(profileProvider.notifier).authProfileLoaded();
    });
  }
}
