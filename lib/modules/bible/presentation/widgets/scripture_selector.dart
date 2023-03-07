import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/bible/application/bible/bible_notifier.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/scripture_bottom_sheet.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/translation_bottom_sheet.dart';

class ScriptureSelector extends ConsumerWidget {
  const ScriptureSelector({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(bibleProvider);

    return Container(
      // height: MSize.h(60),
      width: MSize.sh(1),
      alignment: Alignment.center,
      padding: MSize.pFromLTRB(16, 0, 16, 8),
      child: Row(
        children: [
          GestureDetector(
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              isDismissible: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              constraints: BoxConstraints(maxHeight: MSize.sh(0.9)),
              builder: (context) => const ScriptureBottomSheet(),
            ),
            child: Container(
              height: MSize.h(26),
              alignment: Alignment.center,
              padding: MSize.pSymmetric(h: 30),
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(MSize.r(6)),
              ),
              child: Text(
                state.reference,
                style: TextStyle(
                  fontSize: MSize.fS(12),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
          MSize.hS(10),
          GestureDetector(
            onTap: () => showModalBottomSheet(
              context: context,
              isScrollControlled: true,
              isDismissible: true,
              elevation: 0,
              backgroundColor: Colors.transparent,
              constraints: BoxConstraints(maxHeight: MSize.sh(0.9)),
              builder: (context) => const TranslationBottomSheet(),
            ),
            child: Container(
              height: MSize.r(26),
              alignment: Alignment.center,
              padding: MSize.pSymmetric(h: 18),
              decoration: BoxDecoration(
                color: const Color(0xFFE0E0E0),
                borderRadius: BorderRadius.circular(MSize.r(6)),
              ),
              child: Text(
                state.translation.toUpperCase(),
                style: TextStyle(
                  fontSize: MSize.fS(12),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
