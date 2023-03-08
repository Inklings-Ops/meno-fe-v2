import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/role.dart';
import 'package:meno_fe_v2/modules/blog/presentation/widgets/blog_card.dart';

class BlogPage extends ConsumerWidget {
  const BlogPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAdmin = ref.watch(roleProvider).value == Role.admin;

    return ListView(
      padding: isAdmin ? MSize.pOnly(t: 100) : MSize.pOnly(b: 20, t: 8),
      children: const [
        BlogCard(),
      ],
    );
  }
}
