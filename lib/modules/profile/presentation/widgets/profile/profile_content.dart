// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_avatar.dart';
import 'package:meno_fe_v2/core/router/m_router.dart';
import 'package:meno_fe_v2/layout/widgets/delete_account_alert_dialog.dart';
import 'package:meno_fe_v2/modules/auth/application/auth/auth_notifier.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/role.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/edit_profile_button.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_activity_count_widget.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_recent_broadcasts_list.dart';
import 'package:meno_fe_v2/modules/profile/presentation/widgets/profile/profile_subscribe_button.dart';

class ProfileContent extends ConsumerWidget {
  const ProfileContent({
    super.key,
    required this.profile,
    this.isAuthUser = true,
  });

  final Profile profile;
  final bool isAuthUser;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isAdmin = profile.role == Role.admin;
    final router = AutoRouter.of(context);

    Future<bool> onDeleteAccount() async {
      return await showDialog(
        context: context,
        builder: (context) => const DeleteAccountAlertDialog(),
      );
    }

    return SingleChildScrollView(
      padding: isAdmin ? MSize.pOnly(t: 0) : MSize.pFromLTRB(0, 30, 0, 16),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            MAvatar(
              radius: isAdmin ? MSize.r(50) : MSize.r(70),
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
                  fontSize: isAdmin ? MSize.fS(18) : MSize.fS(20),
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
            if (isAdmin) ...[
              Padding(
                padding: MSize.pSymmetric(h: 16),
                child: isAuthUser
                    ? const _AuthUserActionButtons()
                    : const _OtherUserActionButtons(),
              ),
              MSize.vS(26),
              const ProfileActivityCountWidget(),
              MSize.vS(30),
              ProfileRecentBroadcastList(profile: profile),
            ] else ...[
              _ListContainer(
                child: ListView(
                  padding: MSize.pAll(16),
                  primary: false,
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: const Text('Edit Account'),
                      trailing: const Icon(MIcons.Edit1),
                      onTap: () async => showEditBottomSheet(context, ref),
                    ),
                    ListTile(
                      title: const Text('About'),
                      trailing: const Icon(MIcons.InfoCircle1),
                      onTap: () => router.push(const AboutRoute()),
                    ),
                    ListTile(
                      title: const Text('Terms & Conditions'),
                      trailing: const Icon(MIcons.Paper1),
                      onTap: () => router.push(const TermsAndConditionsRoute()),
                    ),
                    ListTile(
                      title: const Text('Privacy Policy'),
                      trailing: const Icon(MIcons.Paper1),
                      onTap: () => router.push(const PrivacyPolicyRoute()),
                    ),
                  ],
                ),
              ),
              _ListContainer(
                child: ListView(
                  padding: MSize.pAll(16),
                  primary: false,
                  shrinkWrap: true,
                  children: [
                    ListTile(
                      title: const Text('Delete Account'),
                      trailing: const Icon(MIcons.Paper1),
                      onTap: () async {
                        final result = await onDeleteAccount();
                        if (result) {
                          ref.read(authProvider.notifier).deleteUser();
                        }
                      },
                    ),
                    ListTile(
                      title: const Text('Logout'),
                      trailing: const Icon(MIcons.Logout1),
                      onTap: ref.watch(authProvider.notifier).logoutPartially,
                    ),
                  ],
                ),
              ),
            ]
          ],
        ),
      ),
    );
  }
}

class _ListContainer extends StatelessWidget {
  const _ListContainer({Key? key, required this.child}) : super(key: key);
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minHeight: MSize.h(60),
        maxWidth: MSize.sw(1),
        minWidth: MSize.sw(1),
      ),
      margin: MSize.pSymmetric(h: 18, v: 20),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(244, 240, 255, 0.4),
        borderRadius: BorderRadius.circular(MSize.r(20)),
      ),
      child: child,
    );
  }
}

class _AuthUserActionButtons extends StatelessWidget {
  const _AuthUserActionButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: const [
        EditProfileButton(),
        // MSize.hS(13),
        // const GoProButton(),
      ],
    );
  }
}

class _OtherUserActionButtons extends StatelessWidget {
  const _OtherUserActionButtons();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const ProfileSubscribeButton(),
        MSize.hS(13),
        CircleAvatar(
          radius: MSize.h(37 / 2),
          backgroundColor: const Color(0xFFF4F0FF),
          child: const Icon(MIcons.Notification),
        ),
      ],
    );
  }
}
