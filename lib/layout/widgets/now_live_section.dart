import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';

class NowLiveSection extends StatelessWidget {
  const NowLiveSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const MSectionTitle(
          title: 'Live Broadcasts',
          addSideMargin: true,
          showSeeAllButton: false,
        ),
        MSize.vS(6),
        Container(
          height: MSize.h(100),
          width: MSize.sw(1),
          margin: MSize.pSymmetric(h: 16, v: 10),
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: const Color.fromRGBO(244, 240, 255, 0.2),
            borderRadius: BorderRadius.circular(MSize.r(16)),
          ),
          child: Text(
            'Live Broadcasts coming soon',
            style: TextStyle(fontSize: MSize.r(16)),
          ),
        ),
      ],
    );
  }
}

class ReadSection extends StatelessWidget {
  const ReadSection({Key? key}) : super(key: key);

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
          margin: MSize.pSymmetric(h: 16, v: 10),
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
                onPressed: () {},
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
