import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class AddCohostButton extends StatelessWidget {
  const AddCohostButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Co-host(s)',
            style: TextStyle(fontSize: MSize.fS(14)),
          ),
          MSize.vS(5),
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: MSize.r(30),
                width: MSize.r(30),
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.black12,
                ),
                child: Icon(Icons.add, size: MSize.r(20)),
              ),
              MSize.vS(4),
              Text(
                'Add \nCo-host(s)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MSize.fS(14),
                  color: Colors.black87,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
