import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';

class ResetPasswordUserHeaderDetails extends StatelessWidget {
  const ResetPasswordUserHeaderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back,',
              style: textTheme.titleLarge?.copyWith(
                color: Theme.of(context).primaryColorDark,
              ),
            ),
            MSize.vS(2),
            Text(
              'Mimi Okigbo',
              style: textTheme.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColorDark,
              ),
            ),
          ],
        ),
        const MAvatar(radius: 31.5),
      ],
    );
  }
}
