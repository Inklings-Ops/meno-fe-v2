import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast/broadcast_notifier.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_card_type.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_card.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_list_skeleton.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';

class RecentBroadcastListPage extends HookConsumerWidget {
  final Profile profile;
  const RecentBroadcastListPage({super.key, required this.profile});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final broadcasts = ref.watch(broadcastProvider).currentUserBroadcasts;

    useEffect(() {
      Future.delayed(Duration.zero, () {
        ref.read(broadcastProvider.notifier).getCurrentUserBroadcasts();
      });
      return null;
    }, const []);

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        leadingWidth: MSize.w(70),
        leading: GestureDetector(
          onTap: () => AutoRouter.of(context).pop(),
          child: Padding(
            padding: MSize.pOnly(l: 10.0),
            child: const Row(
              children: [
                Icon(Icons.chevron_left),
                Text('Back', style: TextStyle(fontWeight: FontWeight.w500))
              ],
            ),
          ),
        ),
      ),
      body: ListView(
        children: [
          const MSectionTitle(
            title: 'Recent Broadcasts',
            addSideMargin: true,
            showSeeAllButton: false,
          ),
          MSize.vS(20),
          const SearchField(),
          MSize.vS(20),
          if (broadcasts == null || broadcasts.isEmpty)
            const _Skeleton()
          else
            _GridView(broadcasts: broadcasts),
        ],
      ),
    );
  }
}

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      alignment: Alignment.center,
      margin: MSize.pSymmetric(h: 18),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: 'Search your recent broadcasts',
          prefixIcon: const Icon(MIcons.Search1),
          filled: true,
          fillColor: const Color(0xFFF0F0F0),
          errorMaxLines: 5,
          hintStyle: textTheme.bodyLarge?.copyWith(
            color: const Color(0xffc4c4c4),
            height: 1,
            fontWeight: FontWeight.w400,
          ),
          contentPadding: EdgeInsets.zero,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(MSize.r(10)),
            borderSide: const BorderSide(color: Color(0xff9D9D9D)),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(MSize.r(10)),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(MSize.r(10)),
            borderSide: const BorderSide(color: Colors.transparent),
          ),
        ),
      ),
    );
  }
}

class _GridView extends StatelessWidget {
  final List<Broadcast?> broadcasts;

  const _GridView({required this.broadcasts});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final isTablet = size.shortestSide >= 600 && size.longestSide >= 960;

    return GridView.builder(
      primary: false,
      shrinkWrap: true,
      padding: MSize.pFromLTRB(16, 0, 16, 30),
      physics: const NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: isTablet ? 3 : 2,
        mainAxisSpacing: 24,
        childAspectRatio: isTablet ? 0.96 : 0.9,
        crossAxisSpacing: 24,
      ),
      itemCount: broadcasts.length,
      itemBuilder: (context, i) => BroadcastCard(
        broadcast: broadcasts[i]!,
        cardType: BroadcastCardType.recent,
      ),
    );
  }
}

class _Skeleton extends StatelessWidget {
  const _Skeleton();

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: const NeverScrollableScrollPhysics(),
      primary: false,
      shrinkWrap: true,
      crossAxisCount: 4,
      childAspectRatio: 1.8,
      padding: MSize.pFromLTRB(16, 0, 16, 30),
      children: List.generate(
        10,
        (index) => const BroadcastCardSkeleton(),
      ),
    );
  }
}
