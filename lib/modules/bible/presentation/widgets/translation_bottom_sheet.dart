import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_close_button.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_handle.dart';
import 'package:meno_fe_v2/modules/bible/application/bible/bible_notifier.dart';

class TranslationBottomSheet extends HookConsumerWidget {
  const TranslationBottomSheet({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final translations = ref.watch(bibleProvider).translations;
    final chapter = ref.watch(bibleProvider).chapterNumber;
    final event = ref.watch(bibleProvider.notifier);

    useEffect(() {
      Future.delayed(Duration.zero, () {
        ref.read(bibleProvider.notifier).getAllTranslations();
      });
      return null;
    }, []);

    return Column(
      children: [
        const Align(
          alignment: Alignment.centerRight,
          child: MBottomSheetCloseButton(),
        ),
        Expanded(
          child: Container(
            height: MSize.sh(0.9),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(MSize.r(40)),
              ),
            ),
            child: Column(
              children: [
                MSize.vS(9),
                const MBottomSheetHandle(),
                MSize.vS(26),
                const Text('TRANSLATIONS'),
                Expanded(
                  child: ListView.separated(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          translations[index].toUpperCase(),
                          style: TextStyle(
                            fontSize: MSize.fS(14),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        contentPadding: MSize.pSymmetric(h: 20, v: 0),
                        onTap: () {
                          event.updateTranslation(translations[index]);
                          event.getChapter(chapter);
                          AutoRouter.of(context).pop();
                        },
                      );
                    },
                    separatorBuilder: (context, index) {
                      return Container(
                        height: MSize.h(0.5),
                        width: MSize.sw(1),
                        color: const Color.fromRGBO(0, 0, 0, 0.05),
                      );
                    },
                    itemCount: translations!.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
