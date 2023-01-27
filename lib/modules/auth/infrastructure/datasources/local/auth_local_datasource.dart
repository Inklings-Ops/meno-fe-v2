import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/dtos/user_credentials_dto.dart';
import 'package:meno_fe_v2/services/secure_storage_Service.dart';

@injectable
class AuthLocalDatasource {
  AuthLocalDatasource(this._storage);

  final SecureStorageService _storage;

  Future<void> deleteAll() async => await _storage.deleteAll();

  Future<void> deleteCredentials() async {
    await _storage.delete(key: MKeys.authCredentials);
  }

  Future<void> deleteCredentialToken() async {
    String? jsonString = await _storage.read(key: MKeys.authCredentials);
    final credentials = UserCredentialsDto.fromJson(jsonDecode(jsonString!));
    final updatedCredentials = credentials.copyWith(token: null);
    final encodedString = jsonEncode(updatedCredentials.toJson());
    await _storage.write(key: MKeys.authCredentials, value: encodedString);
  }

  Future<UserCredentialsDto?> getCredentials() async {
    String? jsonString = await _storage.read(key: MKeys.authCredentials);
    if (jsonString == null) return null;

    return UserCredentialsDto.fromJson(jsonDecode(jsonString));
  }

  Future<String?> getToken() async {
    String? token = await _storage.read(key: MKeys.authToken);
    if (token == null) return null;

    return token;
  }

  Future<void> storeCredentials(UserCredentialsDto dto) async {
    final encodedString = jsonEncode(dto.toJson());
    await _storage.write(key: MKeys.authCredentials, value: encodedString);
  }

  Future<void> storeToken(String token) async {
    await _storage.write(key: MKeys.authToken, value: token);
  }
}
