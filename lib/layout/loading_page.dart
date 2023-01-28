import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class LoadingPage extends StatelessWidget {
  const LoadingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(
        child: Lottie.asset(
          'assets/animations/loading-indicator.json',
          animate: true,
          fit: BoxFit.fill,
          width: MSize.sw(1),
        ),
      ),
    );
  }
}
