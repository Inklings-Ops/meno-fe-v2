import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_colors.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/edit_profile_bottom_sheet.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/common/widgets/m_section_title.dart';
import 'package:meno_fe_v2/modules/profile/application/profile_form/profile_form_notifier.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/activity_count_widget.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/scheduled_broadcast_card.dart';

class ProfileContent extends ConsumerWidget {
  const ProfileContent({super.key, required this.profile});
  final Profile profile;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final profileFormEvent = ref.watch(profileFormProvider.notifier);

    return Center(
      child: SingleChildScrollView(
        padding: MSize.pFromLTRB(16, 80, 16, 16),
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
            Text(
              profile.fullName.get()!,
              style: TextStyle(
                fontSize: MSize.fS(18),
                fontWeight: FontWeight.w500,
              ),
            ),
            MSize.vS(18),
            if (profile.bio?.get() != null) ...[
              Text(
                profile.bio!.get()!,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: MSize.fS(14),
                  fontWeight: FontWeight.w500,
                  height: MSize.fS(1.3),
                ),
              ),
              MSize.vS(16),
            ],
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                OutlinedButton.icon(
                  onPressed: () async {
                    await profileFormEvent.init().whenComplete(() {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        backgroundColor: Colors.transparent,
                        elevation: 0,
                        useSafeArea: true,
                        constraints: BoxConstraints(
                          maxHeight: MSize.sh(0.95),
                        ),
                        builder: (context) => Padding(
                          padding: EdgeInsets.only(
                            bottom: MediaQuery.of(context).viewInsets.bottom,
                          ),
                          child: const EditProfileBottomSheet(),
                        ),
                      );
                    });
                  },
                  icon: Icon(Icons.edit, size: MSize.r(12)),
                  label: Text(
                    'Edit details',
                    style: TextStyle(fontSize: MSize.fS(12)),
                  ),
                  style: OutlinedButton.styleFrom(
                    fixedSize: Size(MSize.w(116), MSize.h(37)),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MSize.r(8)),
                      side: const BorderSide(color: MColors.primary),
                    ),
                  ),
                ),
                MSize.hS(13),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: Icon(
                    Icons.workspace_premium,
                    size: MSize.r(12),
                    color: const Color(0xFFFF8800),
                  ),
                  label: Text(
                    'Go Pro',
                    style: TextStyle(
                      fontSize: MSize.fS(12),
                      color: const Color(0xFFFF8800),
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    fixedSize: Size(MSize.w(85), MSize.h(37)),
                    elevation: 0,
                    backgroundColor: const Color(0xFFFF8800).withOpacity(0.2),
                    padding: EdgeInsets.zero,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(MSize.r(8)),
                    ),
                  ),
                ),
              ],
            ),
            MSize.vS(31),
            SizedBox(
              height: MSize.h(47),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ActivityCountWidget(
                    count: 20,
                    title: 'Broadcasts',
                    onTap: () {},
                  ),
                  ActivityCountWidget(
                    count: 60,
                    title: 'Subscribers',
                    onTap: () {},
                  ),
                  ActivityCountWidget(
                    count: 15,
                    title: 'Subscribed',
                    onTap: () {},
                  ),
                ],
              ),
            ),
            MSize.vS(40),
            Column(
              children: [
                const MSectionTitle(title: 'My Scheduled Broadcasts'),
                MSize.vS(6),
                const ScheduledBroadcastCard(),
              ],
            ),
            MSize.vS(40),
            Column(
              children: [
                const MSectionTitle(title: 'Recent Broadcasts'),
                MSize.vS(6),
                const ScheduledBroadcastCard(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
