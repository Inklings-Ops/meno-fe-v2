import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/layout/widgets/m_app_bar.dart';

class PrivacyPolicyPage extends StatelessWidget {
  const PrivacyPolicyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const MAppBar(title: 'Privacy Policy'),
      body: SingleChildScrollView(
        padding: MSize.pSymmetric(h: 16, v: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Menō. ('we,' 'our,' or 'us') is committed to protecting your privacy. This Privacy Policy explains how your personal information is collected, used, and disclosed by Menō.",
              style: TextStyle(
                fontSize: MSize.fS(14),
                fontStyle: FontStyle.italic,
              ),
            ),
            MSize.vS(10),
            Text(
              "This Privacy Policy applies to our application named Menō, and its associated subdomains (collectively, our 'Service'). By accessing or using our Service, you signify that you have read, understood, and agree to our collection, storage, use, and disclosure of your personal information as described in this Privacy Policy and our Terms of Service.",
              style: TextStyle(
                fontSize: MSize.fS(14),
                fontStyle: FontStyle.italic,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
