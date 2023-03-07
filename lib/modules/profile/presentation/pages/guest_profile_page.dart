import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_content.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_content_skeleton.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class GuestProfilePage extends ConsumerStatefulWidget {
  const GuestProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _GuestProfilePageState();
}

class _GuestProfilePageState extends ConsumerState<GuestProfilePage> {
  RefreshController refreshController =
      RefreshController(initialRefresh: false);

  void onRefresh() async {
    await Future.delayed(Duration.zero, () {
      ref.read(profileProvider.notifier).authProfileLoaded();
    });
    refreshController.refreshCompleted();
  }

  void onLoading() async {
    await Future.delayed(Duration.zero, () {
      ref.read(profileProvider.notifier).authProfileLoaded();
    });
    refreshController.loadComplete();
  }

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(profileProvider);

    return Scaffold(
      body: state.whenOrNull(
        loading: () => const ProfileContentSkeleton(),
        authUserLoaded: (profile) => ProfileContent(profile: profile),
        otherUserLoaded: (profile) => const ProfileContentSkeleton(),
        failed: () => const ProfileContentSkeleton(),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    // Future.delayed(Duration.zero, () {
    //   ref.read(profileProvider.notifier).authProfileLoaded();
    // });
  }
}
