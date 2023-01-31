import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/bible/application/bible/bible_notifier.dart';

class ChapterGrid extends ConsumerWidget {
  const ChapterGrid({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final event = ref.watch(bibleProvider.notifier);
    final state = ref.watch(bibleProvider);

    return GridView.count(
      crossAxisCount: 4,
      childAspectRatio: 1.8,
      padding: MSize.pOnly(t: 10, b: 20),
      children: List.generate(
        state.numberOfChapters,
        (index) => GridTile(
          child: InkWell(
            onTap: () {
              event.getChapter('${index + 1}');
              AutoRouter.of(context).pop();
            },
            child: Center(
              child: Text('${index + 1}'),
            ),
          ),
        ),
      ),
    );
  }
}
