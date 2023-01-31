import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class BroadcastCohostsTabView extends StatelessWidget {
  const BroadcastCohostsTabView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MSize.sw(1),
      child: Padding(
        padding: MSize.pSymmetric(v: 40),
        child: const Text(
          'Cohost feature coming soon',
          textAlign: TextAlign.center,
        ),
      ),
    );

    // return GridView.builder(
    //   shrinkWrap: true,
    //   gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    //     crossAxisCount: 4,
    //     childAspectRatio: 1.3,
    //     mainAxisSpacing: MSize.r(24),
    //   ),
    //   itemCount: listeners.length,
    //   itemBuilder: (context, index) {
    //     return SizedBox(
    //       height: MSize.h(71),
    //       width: MSize.w(65),
    //       child: Column(
    //         crossAxisAlignment: CrossAxisAlignment.center,
    //         mainAxisAlignment: MainAxisAlignment.center,
    //         children: [
    //           MAvatar(
    //             radius: MSize.r(15),
    //             showBorder: false,
    //             image: listeners[index]?.imageUrl != null
    //                 ? NetworkImage(listeners[index]!.imageUrl!)
    //                 : null,
    //           ),
    //           MSize.vS(5),
    //           Text(
    //             listeners[index]!.fullName,
    //             maxLines: 2,
    //             softWrap: true,
    //             textAlign: TextAlign.center,
    //             overflow: TextOverflow.clip,
    //             style: TextStyle(
    //               fontSize: MSize.fS(11),
    //               fontWeight: FontWeight.w400,
    //               height: MSize.h(1.07),
    //             ),
    //           )
    //         ],
    //       ),
    //     );
    //   },
    // );
  }
}
