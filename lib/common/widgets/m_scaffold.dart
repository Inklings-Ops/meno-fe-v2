import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/common/widgets/m_header_painter.dart';
import 'package:meno_fe_v2/common/widgets/m_red_dot.dart';

class MScaffold extends HookWidget {
  final void Function()? leadingAction;
  final bool showLeading;
  final String title;
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final Color? backgroundColor;

  const MScaffold({
    super.key,
    this.leadingAction,
    this.showLeading = true,
    required this.title,
    required this.child,
    this.padding,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    AnimationController animationController = useAnimationController(
      duration: const Duration(milliseconds: 1350),
      lowerBound: 0,
      upperBound: MSize.r(2.6),
    );

    animationController.repeat(reverse: true);

    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: backgroundColor ?? Colors.white,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        scrolledUnderElevation: 0,
        leadingWidth: MSize.w(70),
        leading: Visibility(
          visible: showLeading,
          child: GestureDetector(
            onTap: leadingAction ?? () => Navigator.of(context).pop(),
            child: Padding(
              padding: MSize.pOnly(l: 10.0),
              child: Row(
                children: [
                  Icon(Icons.chevron_left, color: theme.primaryColorLight),
                  Text(
                    'Back',
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.onPrimary,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
      body: Stack(
        children: [
          Container(
            padding: MSize.pSymmetric(h: 16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: SingleChildScrollView(
                    padding: padding ?? MSize.pOnly(t: 250),
                    child: child,
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: MSize.pFromLTRB(16, animationController.value, 16, 0),
            child: CustomPaint(
              painter: MHeaderPainter(color: theme.primaryColor),
              child: Padding(
                padding: MSize.pOnly(t: 90.0),
                child: Stack(
                  fit: StackFit.passthrough,
                  clipBehavior: Clip.none,
                  children: [
                    MRedDot(controller: animationController),
                    Text(
                      title,
                      style: TextStyle(
                        color: theme.primaryColorLight,
                        fontWeight: FontWeight.w600,
                        fontSize: MSize.fS(24),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
