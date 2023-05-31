import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/modules/profile/presentation/pages/settings_page.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        elevation: 0,
        leadingWidth: MSize.w(70),
        leading: GestureDetector(
          onTap: () => AutoRouter.of(context).pop(),
          child: Padding(
            padding: MSize.pOnly(l: 10.0),
            child: const Row(
              children: [
                Icon(Icons.chevron_left),
                Text('Back', style: TextStyle(fontWeight: FontWeight.w500))
              ],
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        padding: MSize.pOnly(l: 18, r: 18, b: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const MSectionTitle(title: 'About Menō?', showSeeAllButton: false),
            MSize.vS(10),
            AutoSizeText(
              "μένω ménō, men'-o; a primary verb; to stay (in a given place, state, relation or expectancy):—abide, continue, dwell, endure, be present, remain, stand, tarry (for)",
              style: textTheme.bodyLarge?.copyWith(fontStyle: FontStyle.italic),
            ),
            MSize.vS(30),
            const MSectionTitle(
              showBorder: true,
              title: 'More About Menō',
              showSeeAllButton: false,
            ),
            MSize.vS(10),
            AutoSizeText(
              "Menō is a devotional app for Christians that allows users to read different translations of the Christian Bible while also being able to read articles and blogs to help them grow spiritually.",
              style: textTheme.bodyLarge,
            ),
            MSize.vS(30),
            const MSectionTitle(
              showBorder: true,
              title: 'Our Vision & Mission',
              showSeeAllButton: false,
            ),
            MSize.vS(10),
            AutoSizeText(
              "The vision of Menō is to see every Christian be able to easily access resources and tools beneficial for their spiritual growth.",
              style: textTheme.bodyLarge,
            ),
            MSize.vS(30),
            const MSectionTitle(
              showBorder: true,
              title: 'Features',
              showSeeAllButton: false,
            ),
            MSize.vS(10),
            AutoSizeText(
              "Read Bible & Blogs",
              style: textTheme.bodyLarge,
            ),
            AutoSizeText(
              "Create Live Broadcasts (Coming Soon)",
              style: textTheme.bodyLarge,
            ),
            AutoSizeText(
              "Join Broadcasts you subscribe to (Coming Soon)",
              style: textTheme.bodyLarge,
            ),
            AutoSizeText(
              "Take Notes (Coming Soon)",
              style: textTheme.bodyLarge,
            ),
            MSize.vS(30),
            const MSectionTitle(
              title: 'More Information',
              showBorder: false,
              addSideMargin: false,
              showSeeAllButton: false,
            ),
            MSize.vS(10),
            SettingsListItem(
              title: "Terms & Conditions",
              onTap: () {
                AutoRouter.of(context).push(const TermsAndConditionsRoute());
              },
            ),
            MSize.vS(10),
            SettingsListItem(
              title: "Privacy Policy",
              onTap: () {
                AutoRouter.of(context).push(const PrivacyPolicyRoute());
              },
            ),
          ],
        ),
      ),
    );
  }
}
