import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class ComingSoonPage extends StatelessWidget {
  const ComingSoonPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Coming Soon!',
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: MSize.fS(24),
            ),
          ),
          MSize.vS(20),
          Padding(
            padding: MSize.pSymmetric(h: 40),
            child: Text(
              'This feature will be available in the coming versions of Meno',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MSize.fS(16),
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
