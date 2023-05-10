import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/common/widgets/m_text_button.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/application/login_return/login_return_notifier.dart';
import 'package:skeletons/skeletons.dart';

class ReturningUserDetails extends ConsumerWidget {
  const ReturningUserDetails({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;

    final state = ref.watch(loginReturnProvider);
    final authEvent = ref.watch(authProvider.notifier);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Welcome back,',
                    style: textTheme.titleMedium?.copyWith(
                      color: Theme.of(context).primaryColorDark,
                    ),
                  ),
                  if (state.fullName?.get() == null) ...[
                    MSize.hS(2),
                    SkeletonLine(
                      style: SkeletonLineStyle(
                        height: textTheme.titleLarge?.fontSize,
                        width: MSize.w(160),
                      ),
                    )
                  ] else
                    Text(
                      state.fullName!.get()!,
                      style: textTheme.titleLarge?.copyWith(
                        fontWeight: FontWeight.bold,
                        color: Theme.of(context).primaryColorDark,
                      ),
                    ),
                ],
              ),
            ),
            Stack(
              children: [
                MAvatar(
                  radius: 31.5,
                  showBorder: false,
                  image: state.avatarUrl != null
                      ? NetworkImage(state.avatarUrl!)
                      : null,
                ),
                Positioned(
                  bottom: MSize.r(2),
                  right: MSize.r(2),
                  child: Container(
                    height: MSize.r(15),
                    width: MSize.r(15),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        width: MSize.r(1.5),
                        color: Colors.white,
                      ),
                      color: Colors.green[400],
                    ),
                    child: Icon(
                      Icons.check,
                      size: MSize.sh(0.01),
                      color: Theme.of(context).primaryColorLight,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        MTextButton(
          onPressed: () => authEvent.logout(),
          title: 'Use another account?',
        ),
      ],
    );
  }
}
