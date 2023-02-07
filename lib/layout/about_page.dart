import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/layout/widgets/m_app_bar.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(title: 'About Menō'),
      body: SingleChildScrollView(
        padding: MSize.pSymmetric(h: 16, v: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const MSectionTitle(
              showBorder: true,
              title: 'What is Menō?',
              showSeeAllButton: false,
            ),
            MSize.vS(10),
            Text(
              "μένω ménō, men'-o; a primary verb; to stay (in a given place, state, relation or expectancy):—abide, continue, dwell, endure, be present, remain, stand, tarry (for)",
              style: TextStyle(
                fontSize: MSize.fS(14),
                fontStyle: FontStyle.italic,
              ),
            ),
            MSize.vS(30),
            const MSectionTitle(
              showBorder: true,
              title: 'More About Menō',
              showSeeAllButton: false,
            ),
            MSize.vS(10),
            Text(
              "Menō is a suite of software solutions that have been carefully designed and developed to aid and enhance the interaction between believers, specifically for the purpose of fellowshipping together and edifying one another.",
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(10),
            Text(
              "It serves as a real-time connectivity platform that includes features and functionalities that make it easier for believers all over the world to edify one another and fellowship together.",
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(30),
            const MSectionTitle(
              showBorder: true,
              title: 'Our Vision & Mission',
              showSeeAllButton: false,
            ),
            MSize.vS(10),
            Text(
              "The vision of menō is to see all Christians being able to connect and fellowship seamlessly with each other from anywhere in the world and we are on a mission to build the world's most effective live streaming/connectivity platform for believers.",
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(30),
            const MSectionTitle(
              showBorder: true,
              title: 'Features',
              showSeeAllButton: false,
            ),
            MSize.vS(10),
            Text(
              "Read Bible & Blogs",
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            Text(
              "Create Live Broadcasts (Coming Soon)",
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            Text(
              "Join Broadcasts you subscribe to (Coming Soon)",
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            Text(
              "Take Notes (Coming Soon)",
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(50),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Privacy Policy",
                style: TextStyle(
                  fontSize: MSize.fS(14),
                  fontWeight: FontWeight.w500,
                  color: MColors.primary,
                ),
              ),
            ),
            MSize.vS(10),
            GestureDetector(
              onTap: () {},
              child: Text(
                "Terms & Conditions",
                style: TextStyle(
                  fontSize: MSize.fS(14),
                  fontWeight: FontWeight.w500,
                  color: MColors.primary,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
