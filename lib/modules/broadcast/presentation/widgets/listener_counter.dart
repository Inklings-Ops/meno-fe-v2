import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:meno_fe_v2/common/utils/m_size.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';
import 'package:meno_fe_v2/services/socket/socket_data_notifier.dart';
import 'package:meno_fe_v2/services/socket/socket_service.dart';

class ListenerCounter extends HookConsumerWidget {
  const ListenerCounter({
    Key? key,
    required this.broadcast,
    this.isListening = true,
    this.fontSize = 12.0,
  }) : super(key: key);

  final Broadcast broadcast;
  final bool isListening;
  final double fontSize;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    SocketState socketState = ref.watch(socketDataProvider);

    useEffect(() {
      Future.delayed(Duration.zero, () {
        final event = ref.read(socketDataProvider.notifier);
        event.getNumberOfListeners(broadcast.id);
      });
      return null;
    });

    var formattedNumber = NumberFormat.compact().format(
      socketState.numberOfLiveListeners ?? 10000000,
    );

    return Text(
      isListening ? '$formattedNumber listening' : '$formattedNumber streaming',
      style: TextStyle(
        fontSize: MSize.fS(fontSize),
        fontWeight: FontWeight.w400,
        color: const Color(0xFF6F6F6F),
      ),
    );
  }
}
