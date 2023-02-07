import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';

class DiscoverMenoSection extends ConsumerWidget {
  const DiscoverMenoSection({super.key, this.onDiscoverPressed});

  final void Function()? onDiscoverPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const MSectionTitle(
          title: 'Discover Menō',
          showSeeAllButton: false,
          addSideMargin: true,
        ),
        Padding(
          padding: MSize.pSymmetric(h: 16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MSize.vS(6),
                    MButton(
                      onPressed: () {
                        AutoRouter.of(context).push(const AboutRoute());
                      },
                      title: 'About Menō',
                      borderRadius: BorderRadius.circular(MSize.r(10)),
                      filled: false,
                      titleColor: MColors.primary,
                      fontSize: MSize.fS(16),
                      fixedSize: Size(MSize.sw(0.35), MSize.h(40)),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/home/live-empty.png',
                fit: BoxFit.contain,
                height: MSize.fS(120),
              ),
            ],
          ),
        )
      ],
    );
  }
}
