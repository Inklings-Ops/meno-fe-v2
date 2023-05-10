import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class SubscribeButton extends StatelessWidget {
  const SubscribeButton({super.key, this.disabled = false});
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Container(
      height: MSize.h(23),
      width: MSize.w(97),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: disabled ? MColors.disabled : Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(MSize.r(3)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Subscribed',
            style: textTheme.bodyLarge?.copyWith(color: Colors.white),
          ),
          Icon(
            Icons.check,
            color: Colors.white,
            size: MSize.r(14),
          ),
        ],
      ),
    );
  }
}
