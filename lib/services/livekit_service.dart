import 'package:flutter/services.dart';
import 'package:livekit_client/livekit_client.dart';

class LivekitService {
  late Room room;
  late EventsListener<RoomEvent> listener;

  Future<void> connect(String token, [bool isHost = true]) async {
    try {
      room = Room();

      listener = room.createListener();

      await room.connect(
        "wss://meno.livekit.cloud",
        token,
        fastConnectOptions: FastConnectOptions(
          microphone: TrackOption(enabled: isHost),
        ),
        roomOptions: RoomOptions(
          defaultAudioOutputOptions: AudioOutputOptions(
            speakerOn: isHost ? false : true,
          ),
        ),
      );
    } on PlatformException catch (e) {
      throw PlatformException(
        code: e.code,
        message: e.message,
        details: e.details,
        stacktrace: e.stacktrace,
      );
    }
  }

  Future<void> dispose() async {
    room.removeListener(() {});
    await listener.dispose();
    await room.dispose();
  }

  Future<void> leave() => room.disconnect();

  Future<void> mute(bool enabled) async {
    await room.localParticipant?.setMicrophoneEnabled(enabled);
  }
}
