import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/bible/application/bible/bible_notifier.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/bible_skeleton.dart';
import 'package:meno_fe_v2/modules/bible/presentation/widgets/scripture_selector.dart';

class BiblePage extends ConsumerWidget {
  const BiblePage({super.key,  this.scrollController});
  final ScrollController? scrollController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final chapter = ref.watch(bibleProvider).chapter;
    final loading = ref.watch(bibleProvider).loading;

    List<Widget> children = [MSize.vS(10)];
    List<InlineSpan> spans = [];

    children.add(
      Container(
        margin: MSize.pSymmetric(h: 24),
        child: Text.rich(
          TextSpan(children: spans),
          style: TextStyle(
            fontSize: MSize.fS(14),
            fontWeight: FontWeight.w400,
            height: MSize.h(1.5),
          ),
        ),
      ),
    );

    for (var i = 0; i < chapter.verses.length; i++) {
      var item = chapter.verses[i];
      spans.add(
        WidgetSpan(
          alignment: PlaceholderAlignment.top,
          child: GestureDetector(
            onTap: () {},
            child: Padding(
              padding: MSize.pOnly(r: 1, t: 2, l: 4),
              child: Text(
                '${item?.verse}',
                style: TextStyle(fontSize: MSize.fS(8)),
              ),
            ),
          ),
        ),
      );

      spans.add(
        TextSpan(children: [
          TextSpan(text: '${item?.text}\n'),
          TextSpan(
            text: ' ',
            style: TextStyle(
              fontSize: MSize.fS(14),
              fontWeight: FontWeight.w400,
              height: MSize.h(2.4),
            ),
          ),
        ]),
      );

      if (!(i == chapter.verses.length - 1)) {
        spans.add(const TextSpan(text: ' '));
      }
    }

    children.add(MSize.vS(40));

    if (loading) {
      return SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: const [
            ScriptureSelector(),
            BibleSkeleton(),
          ],
        ),
      );
    }

    return SingleChildScrollView(
      controller: scrollController,
      child: Column(
        children: [
          const ScriptureSelector(),
          ...children,
        ],
      ),
    );
  }
}
