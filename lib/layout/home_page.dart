import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/layout/widgets/discover_meno_section.dart';
import 'package:meno_fe_v2/layout/widgets/read_bible_section.dart';
import 'package:meno_fe_v2/layout/widgets/read_blog_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key, required this.goTo});
  final void Function(int value) goTo;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: MSize.pOnly(b: 20),
      child: Column(
        children: [
          DiscoverMenoSection(goToAbout: () => goTo(3)),
          MSize.vS(30),
          ReadBibleSection(goToBible: () => goTo(1)),
          MSize.vS(30),
          ReadBlogSection(goToBlog: () => goTo(2)),
        ],
      ),
    );
  }
}
