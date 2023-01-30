import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/stream/stream_bottom_sheet_title.dart';

class StreamBottomSheet extends StatelessWidget {
  const StreamBottomSheet({
    Key? key,
    required this.broadcast,
    required this.tabController,
    this.loading = false,
  }) : super(key: key);

  final Broadcast broadcast;
  final TabController tabController;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      expand: false,
      minChildSize: 0.66,
      maxChildSize: 0.9,
      initialChildSize: 0.66,
      builder: (context, scrollController) {
        return SingleChildScrollView(
          controller: loading ? null : scrollController,
          primary: false,
          child: Container(
            height: MSize.sh(0.9),
            width: MSize.sw(1),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(MSize.r(30)),
              ),
            ),
            child: Column(
              children: [
                StreamBottomSheetTitle(
                  broadcast: broadcast,
                  tabController: tabController,
                  loading: loading,
                ),
                Expanded(
                  child: Container(
                    color: Colors.white,
                    child: TabBarView(
                      controller: tabController,
                      children: const [
                        Center(child: Text('Chat Page')),
                        Center(child: Text('Live Bible')),
                        Center(child: Text('Take Notes')),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
