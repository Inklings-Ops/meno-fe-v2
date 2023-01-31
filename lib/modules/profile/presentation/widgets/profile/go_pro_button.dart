import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class GoProButton extends StatelessWidget {
  const GoProButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(
        Icons.workspace_premium,
        size: MSize.r(12),
        color: const Color(0xFFFF8800),
      ),
      label: Text(
        'Go Pro',
        style: TextStyle(
          fontSize: MSize.fS(12),
          color: const Color(0xFFFF8800),
        ),
      ),
      style: ElevatedButton.styleFrom(
        fixedSize: Size(MSize.w(85), MSize.h(37)),
        elevation: 0,
        backgroundColor: const Color(0xFFFF8800).withOpacity(0.2),
        padding: EdgeInsets.zero,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MSize.r(8)),
        ),
      ),
    );
  }
}
