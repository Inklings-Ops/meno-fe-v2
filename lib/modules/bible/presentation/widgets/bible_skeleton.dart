import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:skeletons/skeletons.dart';

class BibleSkeleton extends StatelessWidget {
  const BibleSkeleton({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MSize.vS(10),
          SkeletonParagraph(
            style: SkeletonParagraphStyle(
              lines: 20,
              padding: MSize.pSymmetric(h: 24),
            ),
          ),
        ],
      ),
    );
  }
}
