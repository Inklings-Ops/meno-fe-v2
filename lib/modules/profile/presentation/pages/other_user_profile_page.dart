import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_content.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_content_skeleton.dart';

class OtherUserProfilePage extends ConsumerStatefulWidget {
  const OtherUserProfilePage({super.key, required this.userId});
  final String userId;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _OtherUserProfilePageState();
}

class _OtherUserProfilePageState extends ConsumerState<OtherUserProfilePage> {
  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileProvider);

    return state.when(
      loading: () => const ProfileContentSkeleton(),
      authUserLoaded: (profile) => const ProfileContentSkeleton(),
      otherUserLoaded: (profile) => ProfileContent(
        profile: profile,
        isAuthUser: false,
      ),
      failed: () => const ProfileContentSkeleton(),
    );
  }

  @override
  void initState() {
    super.initState();
    Future.delayed(Duration.zero, () {
      ref.read(profileProvider.notifier).profileLoaded(widget.userId);
    });
  }
}
