import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';

final timerProvider = StateNotifierProvider<TimerNotifier, MTimerState>(
  (ref) => TimerNotifier(),
);

class TimerNotifier extends StateNotifier<MTimerState> {
  TimerNotifier() : super(MTimerState(elapsed: 0, time: ''));

  late Stream<int>? timerStream;

  late StreamSubscription<int>? timerSubscription;
  bool flag = true;

  String hoursStr = '00';
  String minutesStr = '00';
  String secondsStr = '00';

  void reset() {
    timerSubscription?.cancel();
    timerStream = null;
    hoursStr = '00';
    minutesStr = '00';
    secondsStr = '00';
    state = MTimerState(elapsed: 0, time: "00:00:00");
  }

  void start() {
    timerStream = stopWatchStream();
    timerSubscription = timerStream?.listen((int newTick) {
      hoursStr =
          ((newTick / (60 * 60)) % 60).floor().toString().padLeft(2, '0');
      minutesStr = ((newTick / 60) % 60).floor().toString().padLeft(2, '0');
      secondsStr = (newTick % 60).floor().toString().padLeft(2, '0');
      state = MTimerState(
        time: "$hoursStr:$minutesStr:$secondsStr",
        elapsed: newTick,
      );
    });
  }

  void stop() {
    timerSubscription?.cancel();
  }

  Stream<int> stopWatchStream() {
    late StreamController<int>? streamController;
    late Timer? timer;
    Duration timerInterval = const Duration(seconds: 1);
    int counter = 0;

    void stopTimer() {
      if (timer != null) {
        timer?.cancel();
        timer = null;
        counter = 0;
        streamController?.close();
      }
    }

    void tick(_) {
      counter++;
      streamController?.add(counter);
      if (!flag) {
        stopTimer();
      }
    }

    void startTimer() {
      timer = Timer.periodic(timerInterval, tick);
    }

    streamController = StreamController<int>(
      onListen: startTimer,
      onCancel: stopTimer,
      onResume: startTimer,
      onPause: stopTimer,
    );

    return streamController.stream;
  }
}

class MTimerState {
  final String? time;
  final int? elapsed;

  MTimerState({this.time, this.elapsed});
}
