import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:lottie/lottie.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/live_for_you_section.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/home/now_live_section.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';
import 'package:pull_to_refresh/pull_to_refresh.dart';

class HomePage extends HookConsumerWidget {
  HomePage({super.key, this.onDiscoverPressed});

  final void Function()? onDiscoverPressed;

  final _refreshController = RefreshController(initialRefresh: true);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      Future.delayed(Duration.zero, () {
        ref.watch(socketDataProvider.notifier).getLiveBroadcasts();
      });
      return null;
    });
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
        padding: MSize.pOnly(t: 110, b: 20),
        child: Column(
          children: [
            LiveForYouSection(onDiscoverPressed: onDiscoverPressed),
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
