import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class ScheduledBroadcastCard extends StatelessWidget {
  const ScheduledBroadcastCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MSize.h(124),
      width: MSize.sw(1),
      child: Card(
        shadowColor: Colors.black26,
        color: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 10.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(MSize.r(10)),
        ),
        child: Padding(
          padding: MSize.pAll(16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(MSize.r(13)),
                child: Container(
                  height: MSize.r(89),
                  width: MSize.r(89),
                  decoration: BoxDecoration(color: Colors.grey.shade100),
                  child: Image.asset(
                    'assets/images/move-mountains.jpeg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              MSize.hS(13),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Friend of God',
                      style: TextStyle(
                        fontSize: MSize.r(16),
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    // const ListenersList(),
                    Text(
                      '09 March 2021 9:00 AM',
                      style: TextStyle(
                        fontSize: MSize.r(12),
                        color: const Color(0xFF424242),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
