import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';

class DeleteButton extends StatelessWidget {
  const DeleteButton({super.key, required this.delete, this.isVisible = true});

  final void Function()? delete;
  final bool isVisible;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Padding(
        padding: MSize.pOnly(r: 18),
        child: GestureDetector(
          onTap: delete,
          child: Container(
            width: MSize.h(68),
            height: MSize.h(23),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(MSize.r(5)),
            ),
            child: const Text(
              'Delete',
              style: TextStyle(color: Colors.white, height: 1),
            ),
          ),
        ),
      ),
    );
  }
}
