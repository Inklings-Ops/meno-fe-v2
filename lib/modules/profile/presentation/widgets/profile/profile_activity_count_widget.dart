import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/profile/application/profile/profile_notifier.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/activity_count_widget.dart';

class ProfileActivityCountWidget extends HookConsumerWidget {
  const ProfileActivityCountWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(profileProvider);

    return state.maybeWhen(
      orElse: () => Padding(
        padding: MSize.pSymmetric(h: 16),
        child: SizedBox(
          height: MSize.h(54),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              ActivityCountWidget(loading: true),
              ActivityCountWidget(loading: true),
              ActivityCountWidget(loading: true),
            ],
          ),
        ),
      ),
      authUserLoaded: (profile) => Padding(
        padding: MSize.pSymmetric(h: 16),
        child: SizedBox(
          height: MSize.h(54),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ActivityCountWidget(
                count: '${profile.count?.broadcasts}',
                title: 'Broadcasts',
                onTap: () {},
              ),
              ActivityCountWidget(
                count: '${profile.count?.subscribers}',
                title: 'Subscribers',
                onTap: () {},
              ),
              ActivityCountWidget(
                count: '${profile.count?.subscriptions}',
                title: 'Subscribed',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
