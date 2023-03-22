import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_content.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_content_skeleton.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class AdminProfilePage extends ConsumerStatefulWidget {
  const AdminProfilePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _AdminProfilePageState();
}

class _AdminProfilePageState extends ConsumerState<AdminProfilePage> {
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

    return SmartRefresher(
      controller: refreshController,
      onRefresh: onRefresh,
      onLoading: onLoading,
      enablePullDown: true,
      enablePullUp: false,
      header: CustomHeader(
        builder: (BuildContext context, RefreshStatus? status) {
          return Container(
            alignment: Alignment.bottomCenter,
            child: Lottie.asset(
              'assets/animations/loading-indicator.json',
              animate: true,
              fit: BoxFit.fill,
              width: MSize.sw(1),
            ),
          );
        },
      ),
      footer: CustomFooter(
        builder: (BuildContext context, LoadStatus? status) {
          if (status == LoadStatus.loading) {
            return Container(
              alignment: Alignment.bottomCenter,
              child: Lottie.asset(
                'assets/animations/loading-indicator.json',
                animate: true,
                fit: BoxFit.fill,
                width: MSize.sw(1),
              ),
            );
          } else {
            return const SizedBox();
          }
        },
      ),
      child: state.whenOrNull(
        loading: () => const ProfileContentSkeleton(),
        authUserLoaded: (profile) => ProfileContent(profile: profile),
        otherUserLoaded: (_) => const ProfileContentSkeleton(),
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
