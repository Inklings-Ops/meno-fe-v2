import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/di/injection.dart';
import 'package:meno_fe_v2/services/agora_service.dart';
import 'package:workmanager/workmanager.dart';

const broadcastTask = "com.inklings.meno.broadcastTask";
const streamTask = "com.inklings.meno.streamTask";

@injectable
class BackgroundService {
  @pragma('vm:entry-point')
  void callbackDispatcher() {
    final agora = di<AgoraService>();

    Workmanager().executeTask((taskName, inputData) async {
      switch (taskName) {
        case broadcastTask:
          await agora.initialize(isHost: true);

          await agora.enableDualStreamMode();

          await agora.start(
            token: inputData?['agoraToken'],
            channelId: inputData?['channelId'],
          );

          await Future.delayed(const Duration(days: 1));

          break;
        case streamTask:
          await agora.initialize(isHost: false);

          await agora.enableDualStreamMode();

          await agora.join(
            token: inputData?['agoraToken'],
            channelId: inputData?['channelId'],
          );

          await Future.delayed(const Duration(days: 1));
          break;
        default:
      }
      return Future.value(true);
    });
  }

  Future<void> cancelAll() => Workmanager().cancelAll();

  Future<void> initialize() {
    return Workmanager().initialize(
      callbackDispatcher,
      isInDebugMode: false,
    );
  }

  Future<void> registerTask({
    required String taskName,
    required String broadcastTitle,
    required String agoraToken,
    required String channelId,
  }) async {
    return await Workmanager().registerPeriodicTask(
      broadcastTitle,
      taskName,
      frequency: const Duration(minutes: 100),
      inputData: {'agoraToken': agoraToken, 'channelId': channelId},
      constraints: Constraints(networkType: NetworkType.connected),
    );
  }
}
