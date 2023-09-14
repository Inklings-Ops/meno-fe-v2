import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(name: 'Env', path: '.env', obfuscate: true)
abstract class Env {
  @EnviedField(varName: 'MENO_API')
  static final String menoApi = _Env.menoApi;

  @EnviedField(varName: 'BIBLE_API')
  static final String bibleApi = _Env.bibleApi;

  @EnviedField(varName: 'AGORA_ID')
  static final String agoraID = _Env.agoraID;
}
