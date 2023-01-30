import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';

class BroadcastDetailsArtwork extends StatelessWidget {
  final Broadcast broadcast;

  const BroadcastDetailsArtwork({super.key, required this.broadcast});

  @override
  Widget build(BuildContext context) {
    final isImageNull = broadcast.imageUrl == null || broadcast.imageUrl == ' ';

    return Container(
      height: MSize.r(146),
      width: MSize.r(146),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(MSize.r(15)),
        color: isImageNull ? Colors.black12 : null,
        image: !isImageNull
            ? DecorationImage(
                image: NetworkImage(broadcast.imageUrl!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: isImageNull
          ? Icon(MIcons.Image2, color: MColors.disabled, size: MSize.r(40))
          : null,
    );
  }
}
