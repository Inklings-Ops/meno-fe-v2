import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MRedDot extends StatelessWidget {
  const MRedDot({Key? key, required this.controller}) : super(key: key);

  final AnimationController controller;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: MSize.r(-1),
      left: MSize.r(-6),
      child: Padding(
        padding: EdgeInsets.only(top: controller.value.r),
        child: CircleAvatar(
          radius: MSize.r(10),
          backgroundColor: const Color.fromRGBO(244, 67, 54, 0.2),
          child: CircleAvatar(
            radius: MSize.r(5),
            backgroundColor: Colors.red,
          ),
        ),
      ),
    );
  }
}
