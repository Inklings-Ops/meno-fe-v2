import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/bible/application/bible/bible_notifier.dart';

class BooksListView extends ConsumerWidget {
  const BooksListView({super.key, required this.tabController});
  final TabController tabController;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final event = ref.watch(bibleProvider.notifier);
    final books = ref.watch(bibleProvider).books;

    return ListView.separated(
      itemCount: books.length,
      itemBuilder: (context, i) {
        return ListTile(
          title: Text(
            books[i].name.last,
            style: TextStyle(
              fontSize: MSize.fS(14),
              fontWeight: FontWeight.w500,
            ),
          ),
          dense: true,
          contentPadding: MSize.pSymmetric(h: 20, v: 0),
          onTap: () {
            event.updateBook(books[i]);
            tabController.index = 1;
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
    );
  }
}
