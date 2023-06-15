// ignore_for_file: depend_on_referenced_packages

import 'package:agora_rtc_engine/agora_rtc_engine.dart';
import 'package:logger/logger.dart';
import 'package:meno_fe_v2/core/env/env.dart';

class AgoraService {
  late RtcEngine _agora;

  final _log = Logger();

  void dispose() {
    _agora.release(sync: true);
  }

  Future<void> initialize({bool isHost = true}) async {
    _log.i('Initializing Agora...');

    _agora = createAgoraRtcEngine();

    await _agora.initialize(RtcEngineContext(appId: Env.agoraID));

    await _agora.enableAudio();

    _log.i('Agora Audio enabled...');

    _agora.registerEventHandler(
      RtcEngineEventHandler(
        onJoinChannelSuccess: (connection, elapsed) {},
        onUserJoined: (connection, remoteUid, elapsed) {},
        onUserOffline: (connection, remoteUid, reason) {},
      ),
    );

    _log.i('Agora Initialization complete.');
  }

  Future<void> enableDualStreamMode() async {
    return await _agora.enableDualStreamMode(enabled: true);
  }

  Future<void> join({required String token, required String channelId}) async {
    _log.i('Joining...');

    await _agora.joinChannel(
      token: token,
      channelId: channelId,
      uid: 0,
      options: const ChannelMediaOptions(
        clientRoleType: ClientRoleType.clientRoleAudience,
        channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
      ),
    );

    _log.i('Joined.');
  }

  Future<void> leave() async {
    _agora.leaveChannel();
    _agora.release(sync: true);
  }

  Future<void> muteAudio(bool enabled) async {
    await _agora.enableLocalAudio(enabled);
  }

  Future<void> start({required String token, required String channelId}) async {
    _log.i('Starting...');

    await _agora.joinChannel(
      token: token,
      channelId: channelId,
      uid: 0,
      options: const ChannelMediaOptions(
        clientRoleType: ClientRoleType.clientRoleBroadcaster,
        channelProfile: ChannelProfileType.channelProfileLiveBroadcasting,
      ),
    );

    _log.i('Started.');
  }
}
