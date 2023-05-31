import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';

class TermsAndConditionsPage extends ConsumerWidget {
  const TermsAndConditionsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final termsOfUse = ref.watch(termsOfUseProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        scrolledUnderElevation: 0.0,
        leadingWidth: MSize.w(70),
        leading: GestureDetector(
          onTap: () => AutoRouter.of(context).pop(),
          child: Padding(
            padding: MSize.pOnly(l: 10.0),
            child: const Row(
              children: [
                Icon(Icons.chevron_left),
                Text('Back', style: TextStyle(fontWeight: FontWeight.w500))
              ],
            ),
          ),
        ),
      ),
      body: ListView.builder(
        padding: MSize.pSymmetric(h: 20),
        itemCount: termsOfUse.length,
        itemBuilder: (context, index) {
          String key = termsOfUse.keys.elementAt(index);
          String value = termsOfUse.values.elementAt(index);
          return Padding(
            padding: MSize.pOnly(b: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  constraints: BoxConstraints(
                    minHeight: textTheme.titleLarge!.fontSize!,
                  ),
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
                    style: textTheme.titleLarge?.copyWith(
                      height: MSize.r(1.2),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                MSize.vS(4),
                AutoSizeText(value, style: textTheme.bodyLarge),
              ],
            ),
          );
        },
      ),
    );
  }
}
