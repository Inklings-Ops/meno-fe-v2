import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/widgets/dialog_box/m_confirmation_dialog.dart';

class DeleteAccountAlertDialog extends StatelessWidget {
  const DeleteAccountAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return const MConfirmationDialog(
      title: 'Delete Menō Account?',
      buttonTitle: 'Yes Delete',
      content: 'You are about to delete your account? \nThis cannot be undone.',
    );
  }
}
