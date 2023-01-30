import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/modules/broadcast/presentation/widgets/broadcast/broadcast_card.dart';

class BroadcastList extends StatelessWidget {
  const BroadcastList({super.key, required this.broadcasts});

  final List<Broadcast?> broadcasts;

  @override
  Widget build(BuildContext context) {
    if (broadcasts.isEmpty) {
      return Container(
        height: MSize.h(206),
        width: MSize.sw(1),
        margin: MSize.pSymmetric(h: 16, v: 10),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: MColors.primaryLight,
          borderRadius: BorderRadius.circular(MSize.r(16)),
        ),
        child: Text(
          'No Live Broadcast',
          style: TextStyle(fontSize: MSize.r(16)),
        ),
      );
    }

    return SizedBox(
      height: MSize.h(226),
      child: ListView.separated(
        itemCount: broadcasts.length,
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (context, i) => MSize.hS(13),
        padding: MSize.pAll(16),
        itemBuilder: (context, index) => BroadcastCard(
          broadcast: broadcasts[index]!,
        ),
      ),
    );
  }
}
