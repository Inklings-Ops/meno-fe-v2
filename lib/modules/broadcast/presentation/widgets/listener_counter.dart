import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';
import 'package:meno_fe_v2/services/socket/socket_service.dart';

class ListenerCounter extends HookConsumerWidget {
  const ListenerCounter({
    Key? key,
    required this.broadcast,
    this.isListening = true,
    this.fontSize,
  }) : super(key: key);

  final Broadcast broadcast;
  final bool isListening;
  final double? fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textTheme = Theme.of(context).textTheme;
    final Size size = MediaQuery.of(context).size;
    final bool isTablet = size.shortestSide >= 600 && size.longestSide >= 960;
    final style = isTablet ? textTheme.titleLarge : textTheme.titleMedium;

    SocketState socketState = ref.watch(socketDataProvider);

    useEffect(() {
      Future.delayed(Duration.zero, () {
        final event = ref.read(socketDataProvider.notifier);
        event.getNumberOfListeners(broadcast.id);
      });
      return null;
    });

    var formattedNumber = NumberFormat.compact().format(
      socketState.numberOfLiveListeners ?? 0,
    );

    return Text(
      isListening ? '$formattedNumber listening' : '$formattedNumber streaming',
      style: style?.copyWith(
        fontWeight: FontWeight.w400,
        fontSize: fontSize,
        color: const Color(0xFF6F6F6F),
      ),
    );
  }
}
