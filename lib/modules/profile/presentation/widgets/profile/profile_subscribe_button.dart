import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class ProfileSubscribeButton extends ConsumerWidget {
  const ProfileSubscribeButton({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return OutlinedButton(
      onPressed: () {},
      style: OutlinedButton.styleFrom(
        fixedSize: Size(MSize.w(137), MSize.h(37)),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MSize.r(8)),
          side: const BorderSide(color: MColors.primary),
        ),
      ),
      child: Row(
        children: [
          Text(
            'Subscribe',
            style: TextStyle(fontSize: MSize.fS(12)),
          ),
          const Icon(Icons.check),
        ],
      ),
    );
  }
}
