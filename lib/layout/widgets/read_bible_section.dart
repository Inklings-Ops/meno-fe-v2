import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';

class ReadBibleSection extends StatelessWidget {
  const ReadBibleSection({Key? key, required this.goToBible}) : super(key: key);
  final void Function() goToBible;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MSectionTitle(
          title: 'Read Bible',
          addSideMargin: true,
          showSeeAllButton: false,
        ),
        MSize.vS(6),
        Container(
          height: MSize.h(130),
          width: MSize.sw(1),
          margin: MSize.pSymmetric(h: 18, v: 10),
          alignment: Alignment.center,
          child: Row(
            children: [
              Image.asset(
                'assets/images/onboarding/onboarding_3.png',
                fit: BoxFit.contain,
                height: MSize.fS(130),
              ),
              const Spacer(),
              MButton(
                onPressed: goToBible,
                elevation: 0,
                title: 'Menō Bible',
                borderRadius: BorderRadius.circular(MSize.r(10)),
                filled: false,
                titleColor: MColors.primary,
                fontSize: MSize.fS(16),
                fixedSize: Size(MSize.sw(0.35), MSize.h(40)),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
