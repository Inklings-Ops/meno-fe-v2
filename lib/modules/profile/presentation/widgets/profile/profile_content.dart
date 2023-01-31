import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/edit_profile_button.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/go_pro_button.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_activity_count_widget.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_recent_broadcasts_list.dart';

class ProfileContent extends StatelessWidget {
  const ProfileContent({super.key, required this.profile});
  final Profile profile;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        padding: MSize.pFromLTRB(0, 80, 0, 16),
        child: Column(
          children: [
            MAvatar(
              radius: MSize.r(50),
              showBorder: true,
              image: profile.imageUrl != null
                  ? NetworkImage(profile.imageUrl!)
                  : null,
            ),
            MSize.vS(15),
            Padding(
              padding: MSize.pSymmetric(h: 16),
              child: Text(
                profile.fullName.get()!,
                style: TextStyle(
                  fontSize: MSize.fS(18),
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            MSize.vS(18),
            if (profile.bio?.get() != null) ...[
              Padding(
                padding: MSize.pSymmetric(h: 16),
                child: Text(
                  profile.bio!.get()!,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: MSize.fS(14),
                    fontWeight: FontWeight.w500,
                    height: MSize.fS(1.3),
                    color: const Color(0xFF898A8D),
                  ),
                ),
              ),
              MSize.vS(16),
            ],
            Padding(
              padding: MSize.pSymmetric(h: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const EditProfileButton(),
                  MSize.hS(13),
                  const GoProButton(),
                ],
              ),
            ),
            MSize.vS(26),
            const ProfileActivityCountWidget(),
            MSize.vS(30),
            // Padding(
            //   padding: MSize.pSymmetric(h: 16),
            //   child: Column(
            //     children: [
            //       const MSectionTitle(title: 'My Scheduled Broadcasts'),
            //       MSize.vS(6),
            //       const ScheduledBroadcastCard(),
            //     ],
            //   ),
            // ),
            // MSize.vS(40),
            ProfileRecentBroadcastList(profile: profile),
          ],
        ),
      ),
    );
  }
}
