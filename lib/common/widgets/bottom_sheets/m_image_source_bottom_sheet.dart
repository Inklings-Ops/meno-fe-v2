import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_container.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_bottom_sheet_title.dart';

class MImageSourceBottomSheet extends StatelessWidget {
  const MImageSourceBottomSheet({
    Key? key,
    required this.fromCamera,
    required this.fromGallery,
  }) : super(key: key);

  final void Function() fromGallery;
  final void Function() fromCamera;

  @override
  Widget build(BuildContext context) {
    return MBottomSheetContainer(
      child: Wrap(
        alignment: WrapAlignment.end,
        children: [
          MBottomSheetTile(
            title: 'Pick from Gallery',
            icon: MIcons.Image1,
            onTap: fromGallery,
          ),
          const Divider(),
          MBottomSheetTile(
            title: 'Use Camera',
            icon: MIcons.Camera1,
            onTap: fromCamera,
          ),
        ],
      ),
    );
  }
}
