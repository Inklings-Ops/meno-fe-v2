import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';

class LiveForYouSection extends ConsumerWidget {
  const LiveForYouSection({super.key, this.onDiscoverPressed});

  final void Function()? onDiscoverPressed;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        const MSectionTitle(
          title: 'Live For You',
          showSeeAllButton: false,
          addSideMargin: true,
          // loading: appState.loading,
        ),
        // if (appState.loading)
        //   BroadcastList(broadcasts: const [], isLoading: appState.loading)
        // else
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
                    SizedBox(
                      child: Text(
                        'Hello! You are not subscribed \nto any broadcasts yet.',
                        style: TextStyle(
                          fontSize: MSize.fS(14),
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    MSize.vS(6),
                    OutlinedButton(
                      onPressed: onDiscoverPressed,
                      style: OutlinedButton.styleFrom(
                        fixedSize: Size(MSize.w(107), MSize.h(34)),
                        minimumSize: Size(MSize.w(107), MSize.h(30)),
                        padding: EdgeInsets.zero,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(MSize.r(8)),
                        ),
                        side: BorderSide(
                          color: Theme.of(context).primaryColor,
                          width: MSize.r(1.5),
                        ),
                      ),
                      child: Text(
                        'Discover',
                        style: TextStyle(
                          fontSize: MSize.fS(12),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
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
