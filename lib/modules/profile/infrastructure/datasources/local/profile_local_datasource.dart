import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/dtos/user_credentials_dto.dart';
import 'package:meno_fe_v2/modules/profile/infrastructure/dtos/profile_dto.dart';
import 'package:meno_fe_v2/services/secure_storage_service.dart';

@Injectable()
class ProfileLocalDatasource {
  ProfileLocalDatasource(this._storage);
  final SecureStorageService _storage;

  Future<String?> getAuthUserId() async {
    final jsonString = await _storage.read(key: MKeys.authCredentials);
    if (jsonString == null) return null;

    final credentials = UserCredentialsDto.fromJson(jsonDecode(jsonString));
    return credentials.user?.id;
  }

  Future<ProfileDto?> getProfile() async {
    String? jsonString = await _storage.read(key: MKeys.profile);
    if (jsonString == null) return null;

    return ProfileDto.fromJson(jsonDecode(jsonString));
  }

  Future<void> storeProfile(ProfileDto? dto) async {
    final encodedString = jsonEncode(dto?.toJson());
    await _storage.write(key: MKeys.profile, value: encodedString);
  }
}
