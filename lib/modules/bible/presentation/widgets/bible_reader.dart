import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/bible/application/bible/bible_notifier.dart';

final _kFont = GoogleFonts.robotoSerif().fontFamily;

class BibleReader extends ConsumerWidget {
  const BibleReader({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final chapter = ref.watch(bibleProvider).chapter;

    List<Widget> children = [];
    List<InlineSpan> spans = [];

    final verseStyle = textTheme.bodyMedium?.copyWith(
      height: 2.1,
      fontFamily: _kFont,
    );
    final numberStyle = verseStyle?.copyWith(fontSize: 12);

    final RegExp isParagraph = RegExp(r'\u00B6');
    final RegExp allExpr = RegExp(r'[\u2039\u203a\u00B6\[\]]');

    for (var i = 0; i < chapter.verses.length; i++) {
      var item = chapter.verses[i]!;
      final verseNumber = item.verse;
      final text = item.text?.replaceAll(allExpr, '');

      if (isParagraph.hasMatch(item.text!)) {
        spans.add(TextSpan(text: '\n   $verseNumber ', style: numberStyle));
      } else {
        spans.add(TextSpan(text: '   $verseNumber ', style: numberStyle));
      }

      spans.add(TextSpan(text: '$text', style: verseStyle));
    }

    children.add(
      Container(
        margin: MSize.pSymmetric(h: 24),
        child: Text.rich(TextSpan(children: spans)),
      ),
    );

    children.add(MSize.vS(40));

    return Column(children: children);
  }
}
