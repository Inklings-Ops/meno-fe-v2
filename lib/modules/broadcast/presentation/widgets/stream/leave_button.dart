import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class LeaveButton extends StatelessWidget {
  const LeaveButton({
    super.key,
    this.onLeavePressed,
    this.disabled = false,
  });

  final void Function()? onLeavePressed;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: disabled ? null : onLeavePressed,
      child: Container(
        width: MSize.h(68),
        height: MSize.h(23),
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: disabled ? MColors.disabled : Colors.red,
          borderRadius: BorderRadius.circular(MSize.r(5)),
        ),
        child: const Text(
          'Leave',
          style: TextStyle(color: Colors.white, height: 1),
        ),
      ),
    );
  }
}
