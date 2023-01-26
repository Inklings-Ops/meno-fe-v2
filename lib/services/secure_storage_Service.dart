import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:injectable/injectable.dart';

AndroidOptions get _getAndroidOptions =>
    const AndroidOptions(encryptedSharedPreferences: true);

@Injectable()
class SecureStorageService {
  final _storage = FlutterSecureStorage(aOptions: _getAndroidOptions);

  Future<void> write({required String key, required String? value}) async {
    await _storage.write(key: key, value: value);
  }

  Future<String?> read({required String key}) async {
    return await _storage.read(key: key);
  }

  Future<void> delete({required String key}) async {
    await _storage.delete(key: key);
  }

  Future<void> deleteAll() async => await _storage.deleteAll();
}
