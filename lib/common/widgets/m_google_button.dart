import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class MGoogleButton extends StatelessWidget {
  const MGoogleButton(
    this.title, {
    Key? key,
    this.onPressed,
  }) : super(key: key);

  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        side: const BorderSide(color: Color(0xFF131313)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            'assets/images/google_icon.svg',
            semanticsLabel: 'google icon',
          ),
          MSize.hS(10),
          Text(
            title,
            style: TextStyle(
              fontSize: MSize.fS(16),
              fontWeight: FontWeight.w600,
              color: const Color(0xff131313),
            ),
          )
        ],
      ),
    );
  }
}
