import 'package:workmanager/workmanager.dart';

const broadcastTask = "com.inklings.meno.broadcastTask";

class BackgroundService {
  @pragma('vm:entry-point')
  void callbackDispatcher() {
    Workmanager().executeTask((taskName, inputData) {
      switch (taskName) {
        case broadcastTask:
          break;
        default:
      }
      return Future.value(true);
    });
  }

  Future<void> initialize() async {
    return await Workmanager().initialize(
      callbackDispatcher,
      isInDebugMode: true,
    );
  }
}
