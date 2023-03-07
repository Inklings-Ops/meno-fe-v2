import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/role.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/discover_meno_section.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/live_for_you_section.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/now_live_section.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/read_bible_section.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/read_blog_section.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends HookConsumerWidget {
  HomePage({super.key, required this.goTo});
  final void Function(int value) goTo;

  final _refreshController = RefreshController(initialRefresh: true);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(Duration.zero, () {
        ref.watch(socketDataProvider.notifier).getLiveBroadcasts();
      });
      return null;
    });

    if (ref.read(roleProvider).value == Role.guest) {
      return _GuestHome(goTo: goTo);
    }

    return SmartRefresher(
      controller: _refreshController,
      onRefresh: () async {
        await Future.delayed(const Duration(seconds: 3), () {});
        _refreshController.refreshCompleted();
      },
      onLoading: () async {
        await Future.delayed(const Duration(seconds: 3), () {});
        _refreshController.loadComplete();
      },
      enablePullDown: true,
      enablePullUp: true,
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
      child: SingleChildScrollView(
        padding: MSize.pOnly(t: 20, b: 20),
        child: Column(
          children: [
            LiveForYouSection(onDiscoverPressed: () => goTo(1)),
            MSize.vS(30),

            const NowLiveSection(),
            MSize.vS(30),

            // if (model.isFrequent) const RecentlyLiveSection(),
            // 30.verticalSpace,

            // if (model.isFrequent) const ListeningSection(),
          ],
        ),
      ),
    );
  }
}

class _GuestHome extends StatelessWidget {
  const _GuestHome({Key? key, required this.goTo}) : super(key: key);
  final void Function(int value) goTo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: MSize.pOnly(b: 20, t: 20),
      child: Column(
        children: [
          DiscoverMenoSection(goToAbout: () => goTo(3)),
          MSize.vS(30),
          ReadBibleSection(goToBible: () => goTo(1)),
          MSize.vS(30),
          ReadBlogSection(goToBlog: () => goTo(2)),
        ],
      ),
    );
  }
}
