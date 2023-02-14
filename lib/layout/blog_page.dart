import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/layout/blog_card.dart';

class BlogPage extends StatelessWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: MSize.pOnly(b: 20, t: 18),
      children: const [
        BlogCard(),
      ],
    );
  }
}
