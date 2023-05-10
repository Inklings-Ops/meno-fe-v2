import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class BroadcastCardArtwork extends StatelessWidget {
  const BroadcastCardArtwork({super.key, required this.imageUrl});

  final String? imageUrl;

  @override
  Widget build(BuildContext context) {
    final isImageNull = imageUrl == ' ' || imageUrl == null;

    return Container(
      alignment: Alignment.center,
      height: MSize.r(88),
      width: MSize.r(88),
      decoration: BoxDecoration(
        color: Colors.transparent,
        shape: BoxShape.circle,
        border: Border.all(
          color: isImageNull ? MColors.disabled : MColors.danger,
        ),
      ),
      child: CircleAvatar(
        radius: MSize.r(40),
        backgroundColor: Colors.white,
        foregroundImage: isImageNull ? null : NetworkImage(imageUrl!),
        child: isImageNull
            ? Icon(
                MIcons.Image2,
                color: MColors.disabled,
                size: MSize.r(49) * 0.7,
              )
            : null,
      ),
    );
  }
}
