import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/common/widgets/m_text_form_field.dart';

class SecurityPage extends StatelessWidget {
  const SecurityPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
        padding: MSize.pSymmetric(h: 18),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const MSectionTitle(title: 'Security', showSeeAllButton: false),
            MSize.vS(16),
            const Text('Make your security changes here.'),
            MSize.vS(30),
            const MTextFormField(label: 'Old Password'),
            MSize.vS(20),
            const MTextFormField(label: 'New Password'),
            MSize.vS(20),
            const MTextFormField(label: 'Confirm New Password'),
            MSize.vS(40),
            MButton(title: 'Save changes', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
