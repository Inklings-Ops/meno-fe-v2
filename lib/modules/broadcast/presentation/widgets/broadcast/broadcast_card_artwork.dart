import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_card_type.dart';

class BroadcastCardArtwork extends StatelessWidget {
  final String? imageUrl;
  final BroadcastCardType cardType;

  const BroadcastCardArtwork({
    super.key,
    required this.imageUrl,
    this.cardType = BroadcastCardType.live,
  });

  @override
  Widget build(BuildContext context) {
    switch (cardType) {
      case BroadcastCardType.live:
        return _CircleAvatar(imageUrl: imageUrl);
      default:
        return _RectangleAvatar(imageUrl: imageUrl);
    }
  }
}

class _CircleAvatar extends StatelessWidget {
  final String? imageUrl;

  const _CircleAvatar({this.imageUrl});

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

class _RectangleAvatar extends StatelessWidget {
  final String? imageUrl;

  const _RectangleAvatar({this.imageUrl});

  @override
  Widget build(BuildContext context) {
    final isImageNull = imageUrl == ' ' || imageUrl == null;

    return Container(
      height: MSize.h(84),
      width: MSize.w(135),
      decoration: BoxDecoration(
        border: Border.all(color: MColors.disabled),
        borderRadius: BorderRadius.circular(MSize.r(14)),
        image: !isImageNull
            ? DecorationImage(
                image: NetworkImage(imageUrl!),
                fit: BoxFit.cover,
              )
            : null,
      ),
      child: isImageNull
          ? const Icon(MIcons.Image2, color: MColors.disabled)
          : null,
    );
  }
}
