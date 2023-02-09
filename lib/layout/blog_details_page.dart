import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class BlogDetailsPage extends StatelessWidget {
  const BlogDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        scrolledUnderElevation: 0,
        backgroundColor: Colors.transparent,
        automaticallyImplyLeading: false,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Colors.white30,
        ),
      ),
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            SliverAppBar(
              automaticallyImplyLeading: false,
              floating: true,
              expandedHeight: MSize.sh(0.3),
              forceElevated: innerBoxIsScrolled,
              flexibleSpace: Stack(
                fit: StackFit.expand,
                children: [
                  Hero(
                    tag: 'blog-image',
                    child: Image.asset(
                      'assets/images/abide.jpg',
                      width: MSize.sw(1),
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: MSize.sw(1),
                    alignment: Alignment.bottomLeft,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black,
                          Colors.black26,
                          Colors.transparent
                        ],
                      ),
                    ),
                    child: SingleChildScrollView(
                      physics: const NeverScrollableScrollPhysics(),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const AutoLeadingButton(color: Colors.white),
                          Hero(
                            tag: 'blog-title',
                            child: Padding(
                              padding: MSize.pOnly(b: 16, l: 16, r: 16),
                              child: Material(
                                color: Colors.transparent,
                                child: Text(
                                  'A Call to Abide',
                                  maxLines: 2,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: MSize.fS(24),
                                    fontWeight: FontWeight.w600,
                                    height: MSize.r(1),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ];
        },
        body: SingleChildScrollView(
          padding: MSize.pAll(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              RichText(
                text: TextSpan(
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: MSize.fS(14),
                  ),
                  children: const [
                    TextSpan(
                      text:
                          'And having this confidence, I know that I shall abide and continue with you all for your furtherance and joy of faith; (Phil. 1:25)',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                    TextSpan(text: '\n'),
                    TextSpan(text: '\n'),
                    TextSpan(
                      text:
                          'When Paul promises in Philippians 1:25 that he will abide with his members for their progress and joy in the faith, there is an assumed response from those to whom this is written.',
                    ),
                    TextSpan(text: '\n'),
                    TextSpan(text: '\n'),
                    TextSpan(
                      text:
                          'However, no matter how sincerely any ministry gift (apostle, teacher, pastor, etc.) promises to abide with his people, there will be no fruitfulness if the same people do not abide for the same purpose: progress and joy in faith.',
                    ),
                    TextSpan(text: '\n'),
                    TextSpan(text: '\n'),
                    TextSpan(
                      text:
                          'Abiding is a two way street and it is this truth that Jesus builds one of his lastly recorded teachings upon: “Abide in Me, and I in you. As the branch cannot bear fruit of itself, unless it abides in the vine, neither can you, unless you abide in Me.” ',
                    ),
                    TextSpan(text: '\n'),
                    TextSpan(text: '\n'),
                    TextSpan(
                      text:
                          'The word ‘abide’ here is translated from the Greek word menō which means ‘to tarry, continue, or stay’ and is the same word Paul uses to describe the essence of his ministry work as seen in Philippians 1:25.',
                    ),
                    TextSpan(text: '\n'),
                    TextSpan(text: '\n'),
                    TextSpan(
                      text:
                          'Jesus’ audience is a group of young men who have already given up so much to follow him, yet Jesus  tells them that the only way their sacrifice can be fruitful is if they do more than follow him in a moment. They must stay. ',
                    ),
                    TextSpan(text: '\n'),
                    TextSpan(text: '\n'),
                    TextSpan(
                      text:
                          'The truth is no moment of emotional surrender in the christian walk, no passionate declaration from a believer’s heart enraptured with love will hold ground if they do not abide.',
                    ),
                    TextSpan(text: '\n'),
                    TextSpan(text: '\n'),
                    TextSpan(
                      text:
                          'Anyone can say they love God, only a Christian who stays can keep to their word.',
                    ),
                    TextSpan(text: '\n'),
                    TextSpan(text: '\n'),
                    TextSpan(
                      text:
                          'In His teaching, Jesus himself is the essence that powers our devotion and fruitfulness, so that anyone is fruitful to the degree that they are connected.',
                    ),
                    TextSpan(text: '\n'),
                    TextSpan(text: '\n'),
                    TextSpan(
                      text:
                          'Like a tree that is planted can only bear fruit when it is continually connected to an enriched soil, no Christian can be fruitful outside of abiding. It is God that uphold us.',
                    ),
                    TextSpan(text: '\n'),
                    TextSpan(text: '\n'),
                    TextSpan(
                      text: 'The Christian life is a call to ',
                    ),
                    TextSpan(
                      text: 'menō.',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
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
