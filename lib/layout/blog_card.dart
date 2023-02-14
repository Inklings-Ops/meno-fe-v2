import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';

class BlogCard extends StatelessWidget {
  const BlogCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => AutoRouter.of(context).push(const BlogDetailsRoute()),
      child: Card(
        margin: MSize.pSymmetric(h: 16),
        elevation: 10,
        shadowColor: Colors.black45,
        surfaceTintColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MSize.r(20)),
        ),
        child: Container(
          height: MSize.sh(0.2),
          width: MSize.sw(1),
          padding: MSize.pOnly(r: 14),
          child: Row(
            children: [
              Hero(
                tag: 'blog-image',
                child: Container(
                  width: MSize.sw(0.37),
                  height: MSize.sh(1),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(MSize.r(20)),
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/images/a-call-to-abide.jpg'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              MSize.hS(12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(),
                    Hero(
                      tag: 'blog-title',
                      child: Material(
                        color: Colors.transparent,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          height: MSize.h(40),
                          child: AutoSizeText(
                            'A Call to Abide',
                            maxLines: 2,
                            style: TextStyle(
                              fontSize: MSize.fS(20),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ),
                    MSize.vS(8),
                    AutoSizeText(
                      'And having this confidence, I know that I shall abide and continue with you all for your furtherance and joy of faith; (Phil. 1:25)',
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: MSize.fS(12),
                        fontStyle: FontStyle.italic,
                        color: Colors.black45,
                      ),
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        CircleAvatar(
                          radius: MSize.r(10),
                          foregroundImage: const AssetImage(
                            'assets/images/icon.png',
                          ),
                        ),
                        MSize.hS(8),
                        AutoSizeText(
                          'F.O.',
                          style: TextStyle(
                            fontSize: MSize.fS(12),
                            color: Colors.black45,
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
