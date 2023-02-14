import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';


class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle(this.text, {super.key});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        Positioned(
          left: 0,
          right: 0,
          child: Container(
            height: MSize.h(10),
            color: Theme.of(context).colorScheme.secondary,
          ),
        ),
        AutoSizeText(
          text,
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: Color(0xFF131313),
            letterSpacing: 0.36,
            fontWeight: FontWeight.w700,
            fontSize: 36,
          ),
        ),
      ],
    );
  }
}