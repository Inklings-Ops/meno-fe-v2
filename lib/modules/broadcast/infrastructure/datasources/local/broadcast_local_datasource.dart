import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/dtos/user_credentials_dto.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/broadcast_dto.dart';
import 'package:meno_fe_v2/services/secure_storage_service.dart';
import 'package:meno_fe_v2/services/shared_preferences_service.dart';

@injectable
class BroadcastLocalDatasource {
  final SharedPreferencesService _storage;

  BroadcastLocalDatasource(this._storage);

  final _secure = SecureStorageService();

  Future<List<BroadcastDto?>> addLiveBroadcastToList(
      BroadcastDto broadcast) async {
    throw UnimplementedError();
  }

  Future<String?> getToken() async => await _secure.read(key: MKeys.authToken);

  Future<UserCredentialsDto?> getUserCredentials() async {
    String? jsonString = await _secure.read(key: MKeys.authCredentials);
    if (jsonString == null) return null;

    return UserCredentialsDto.fromJson(jsonDecode(jsonString));
  }

  Future<List<BroadcastDto?>> readLiveBroadcasts() async {
    throw UnimplementedError();
  }

  Future<void> writeLiveBroadcasts(List<BroadcastDto?> broadcasts) async {
    await _storage.write(key: MKeys.liveBroadcasts, value: broadcasts);
  }
}
