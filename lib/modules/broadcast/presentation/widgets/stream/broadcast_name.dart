import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:skeletons/skeletons.dart';

class BroadcasterName extends StatelessWidget {
  const BroadcasterName({super.key, this.broadcast, this.loading = false});
  final Broadcast? broadcast;
  final bool loading;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (loading)
          SkeletonAvatar(
            style: SkeletonAvatarStyle(
              height: MSize.r(22),
              width: MSize.r(22),
              shape: BoxShape.circle,
            ),
          )
        else
          MAvatar(
            radius: MSize.r(11),
            image: broadcast?.creator?.imageUrl != null
                ? NetworkImage(broadcast!.creator!.imageUrl!)
                : null,
          ),
        MSize.hS(4),
        if (loading)
          SkeletonLine(
            style: SkeletonLineStyle(
              height: MSize.r(14),
              width: MSize.r(70),
            ),
          )
        else
          Text(
            broadcast!.creator!.fullName!,
            style: TextStyle(
              fontSize: MSize.fS(14),
              fontWeight: FontWeight.w400,
            ),
          ),
      ],
    );
  }
}
