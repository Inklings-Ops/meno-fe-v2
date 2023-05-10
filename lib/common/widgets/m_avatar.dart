import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MAvatar extends StatelessWidget {
  const MAvatar({
    Key? key,
    required this.radius,
    this.onTap,
    this.image,
    this.showBorder = true,
    this.icon = MIcons.Profile1,
    this.iconColor = MColors.primary,
  }) : super(key: key);

  final double radius;
  final ImageProvider<Object>? image;
  final void Function()? onTap;
  final bool showBorder;
  final IconData icon;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    final primaryDiameter = MSize.r((radius * 2));
    final secondaryDiameter = MSize.r((primaryDiameter - 4));
    final secondaryRadius = secondaryDiameter / 2;

    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: primaryDiameter,
        width: primaryDiameter,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: showBorder
              ? Border.all(color: const Color.fromARGB(255, 172, 172, 172))
              : null,
          image: image != null
              ? DecorationImage(image: image!, fit: BoxFit.cover)
              : null,
        ),
        child: image == null
            ? Icon(
                icon,
                color: iconColor,
                size: MSize.r((secondaryRadius * 0.56)),
              )
            : null,
      ),
    );
  }
}
