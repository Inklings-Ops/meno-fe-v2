import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';

class ResetPasswordUserHeaderDetails extends StatelessWidget {
  const ResetPasswordUserHeaderDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Welcome back,',
              style: TextStyle(
                color: Theme.of(context).primaryColorDark,
                fontSize: MSize.fS(24),
              ),
            ),
            MSize.vS(2),
            Text(
              'Mimi Okigbo',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Theme.of(context).primaryColorDark,
                fontSize: MSize.fS(24),
              ),
            ),
          ],
        ),
        const MAvatar(radius: 31.5),
      ],
    );
  }
}
