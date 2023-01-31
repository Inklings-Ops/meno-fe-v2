import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/book.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/local/books.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/dtos/translation_dto.dart';
import 'package:meno_fe_v2/services/shared_preferences_service.dart';

@injectable
class BibleLocalDatasource {
  final SharedPreferencesService _storage;

  BibleLocalDatasource(this._storage);

  List<Book> getBooks() => books;

  Future<void> storeAllTranslations(List<TranslationDto>? translations) async {
    return await _storage.write(
      key: MKeys.allBibleTranslations,
      value: translations,
    );
  }

  Future<List<TranslationDto>?> readAllTranslations() async {
    final encoded = await _storage.read(key: MKeys.allBibleTranslations);
    final translations = jsonDecode(encoded);
    return translations;
  }
}
