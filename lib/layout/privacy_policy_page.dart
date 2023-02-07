import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/utils/privacy_policy.dart';
import 'package:meno_fe_v2/layout/widgets/m_app_bar.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(title: 'Privacy Policy'),
      body: ListView.builder(
        shrinkWrap: true,
        padding: MSize.pSymmetric(h: 16, v: 16),
        itemCount: privacyPolicy.length,
        itemBuilder: (context, index) {
          String key = privacyPolicy.keys.elementAt(index);
          String value = privacyPolicy.values.elementAt(index);
          return Padding(
            padding: MSize.pOnly(b: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(minHeight: MSize.fS(20)),
                  decoration: BoxDecoration(
                    border: Border(
                      left: BorderSide(
                        color: MColors.danger,
                        width: MSize.r(4),
                      ),
                    ),
                  ),
                  padding: MSize.pOnly(l: 6),
                  child: AutoSizeText(
                    key,
                    minFontSize: 18,
                    maxFontSize: 20,
                    softWrap: true,
                    maxLines: 2,
                    style: TextStyle(
                      height: MSize.r(1.2),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                MSize.vS(4),
                Text(value),
              ],
            ),
          );
        },
      ),
    );
  }
}
