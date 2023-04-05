import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_button.dart';
import 'package:meno_fe_v2/services/network/network_notifier.dart';

class NetworkDialog extends ConsumerWidget {
  const NetworkDialog({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final event = ref.watch(networkProvider.notifier);
    final loading = ref.watch(networkProvider) == NetworkStatus.loading;

    return Dialog(
      child: Container(
        height: MSize.h(398),
        padding: MSize.pSymmetric(h: 44),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(MSize.r(30)),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            SizedBox(
              height: MSize.r(122),
              width: MSize.r(122),
              child: Image.asset('assets/images/hazard.png'),
            ),
            MSize.vS(20),
            Text(
              'Network Error',
              style: TextStyle(
                fontSize: MSize.fS(24),
                fontWeight: FontWeight.w600,
              ),
            ),
            MSize.vS(11),
            Text(
              'Oops! Your internet connection appears to be offline.',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: MSize.fS(14)),
            ),
            MSize.vS(30),
            MButton(
              title: 'Try Again',
              onPressed: event.checkConnection,
              loading: loading,
            ),
            MSize.vS(20),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
