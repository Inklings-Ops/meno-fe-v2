import 'package:flutter/material.dart';
import 'package:meno_fe_v2/common/constants/m_icons.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:skeletons/skeletons.dart';

class Blob extends StatelessWidget {
  const Blob({Key? key, required this.transform}) : super(key: key);
  final Matrix4 transform;

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.center, // set transform origin
      transform: transform,
      child: ClipOval(
        child: Container(
          color: const Color.fromRGBO(140, 102, 245, 0.4),
        ),
      ),
    );
  }
}

class BroadcastArtwork extends StatelessWidget {
  const BroadcastArtwork({
    Key? key,
    this.imageUrl,
    this.loading = false,
    this.fromFile = false,
  }) : super(key: key);

  final String? imageUrl;
  final bool loading;
  final bool fromFile;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MSize.h(150),
      width: MSize.h(120),
      child: Stack(
        children: [
          Align(
            alignment: Alignment.center,
            child: Blob(transform: Matrix4.rotationZ(-2.2)),
          ),
          Align(
            alignment: Alignment.center,
            child: Blob(transform: Matrix4.rotationZ(1.874533)),
          ),
          Align(
            alignment: Alignment.center,
            child: Blob(transform: Matrix4.rotationZ(0.174533)),
          ),
          if (loading)
            Align(
              alignment: Alignment.center,
              child: SkeletonAvatar(
                style: SkeletonAvatarStyle(
                  height: MSize.r(120),
                  width: MSize.r(120),
                  shape: BoxShape.circle,
                ),
              ),
            )
          else
            Align(
              alignment: Alignment.center,
              child: CircleAvatar(
                radius: MSize.r(60),
                backgroundColor: Theme.of(context).primaryColor,
                foregroundImage:
                    imageUrl != null ? NetworkImage(imageUrl!) : null,
                child: Icon(MIcons.Image, size: MSize.r(25)),
              ),
            ),
        ],
      ),
    );
  }
}
