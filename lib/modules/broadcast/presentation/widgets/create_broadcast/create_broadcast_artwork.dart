import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/bottom_sheets/m_image_source_bottom_sheet.dart';
import 'package:meno_fe_v2/modules/broadcast/application/broadcast_form/broadcast_form_notifier.dart';

class CreateBroadcastArtwork extends ConsumerWidget {
  const CreateBroadcastArtwork({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(broadcastFormProvider);
    final event = ref.watch(broadcastFormProvider.notifier);

    return GestureDetector(
      onTap: () async {
        await showModalBottomSheet(
          context: context,
          isScrollControlled: true,
          elevation: 0,
          builder: (context) => MImageSourceBottomSheet(
            fromGallery: () {
              event.artworkChanged(true);
              AutoRouter.of(context).pop();
            },
            fromCamera: () {
              event.artworkChanged(false);
              AutoRouter.of(context).pop();
            },
          ),
        );
      },
      child: Center(
        child: CircleAvatar(
          radius: MSize.r(60),
          backgroundColor: Colors.black12,
          backgroundImage:
              state.artwork != null ? FileImage(state.artwork!) : null,
          child: Container(
            height: MSize.r(120),
            width: MSize.r(120),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color:
                  state.artwork != null ? Colors.black38 : Colors.transparent,
            ),
            child: Text(
              state.artwork != null ? 'Change?' : 'Add an \nartwork?',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: MSize.fS(14),
                fontWeight: FontWeight.w500,
                color: state.artwork != null
                    ? Colors.white
                    : Theme.of(context).primaryColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
