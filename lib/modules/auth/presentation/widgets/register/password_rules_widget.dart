import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

import '../../../application/register/register_notifier.dart';

class PasswordRuleItem extends StatelessWidget {
  const PasswordRuleItem({
    Key? key,
    required this.ruleMap,
    required this.password,
    this.unsetColor = MColors.danger,
    this.setColor = MColors.success,
  }) : super(key: key);

  final Map<dynamic, dynamic> ruleMap;
  final String? password;
  final Color unsetColor;
  final Color setColor;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    Color ruleColor = password == null
        ? Colors.black54
        : !ruleMap['rule'](password)
            ? unsetColor
            : setColor;

    return Padding(
      padding: MSize.pSymmetric(v: 1),
      child: Row(
        children: [
          Icon(
            Icons.check_circle,
            size: MSize.r(18),
            color: ruleColor,
          ),
          MSize.hS(6),
          Text(
            ruleMap["name"].toString(),
            style: textTheme.bodySmall?.copyWith(color: ruleColor),
          )
        ],
      ),
    );
  }
}

class PasswordRulesWidget extends ConsumerWidget {
  const PasswordRulesWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(passwordRuleProvider);
    final registerState = ref.watch(registerProvider);
    final length = state.rules.length;

    return Visibility(
      visible: registerState.passwordController?.text != null,
      child: Column(
        children: [
          MSize.vS(5),
          for (var i = 0; i < length; i++) ...[
            PasswordRuleItem(
              ruleMap: state.rules[i],
              password: registerState.passwordController?.text,
            ),
          ]
        ],
      ),
    );
  }
}
