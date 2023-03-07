import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';

class ReadBlogSection extends StatelessWidget {
  const ReadBlogSection({Key? key, required this.goToBlog}) : super(key: key);
  final void Function() goToBlog;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MSectionTitle(
          title: 'Read Blog',
          addSideMargin: true,
          showSeeAllButton: false,
        ),
        MSize.vS(6),
        Padding(
          padding: MSize.pSymmetric(h: 18.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MSize.vS(6),
                    MButton(
                      onPressed: goToBlog,
                      elevation: 0,
                      title: 'Menō Blog',
                      borderRadius: BorderRadius.circular(MSize.r(10)),
                      filled: false,
                      titleColor: MColors.primary,
                      fontSize: MSize.fS(16),
                      fixedSize: Size(MSize.sw(0.35), MSize.h(40)),
                    ),
                  ],
                ),
              ),
              Image.asset(
                'assets/images/onboarding/onboarding_4.png',
                fit: BoxFit.contain,
                height: MSize.fS(130),
              ),
            ],
          ),
        )
      ],
    );
  }
}
