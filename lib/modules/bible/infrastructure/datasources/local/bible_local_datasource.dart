import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/common/constants/m_keys.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/book.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/datasources/local/books_list.dart';
import 'package:meno_fe_v2/services/shared_preferences_service.dart';

@injectable
class BibleLocalDatasource {
  final SharedPreferencesService _storage;

  BibleLocalDatasource(this._storage);

  List<Book> getOldTestamentBooks() => allOldTestamentBooks;
  List<Book> getNewTestamentBooks() => allNewTestamentBooks;

  Future<void> storeAllTranslations(List<String>? translations) async {
    return await _storage.write(
      key: MKeys.allBibleTranslations,
      value: translations,
    );
  }

  Future<List<String>?> readAllTranslations() async {
    final encoded = await _storage.read(key: MKeys.allBibleTranslations);
    final translations = jsonDecode(encoded);
    return translations;
  }

  final Map<int, List<int>> mapOfIdToChapters = {
    1: List.generate(50, (i) => i + 1),
    2: List.generate(40, (i) => i + 1),
    3: List.generate(27, (i) => i + 1),
    4: List.generate(36, (i) => i + 1),
    5: List.generate(34, (i) => i + 1),
    6: List.generate(24, (i) => i + 1),
    7: List.generate(21, (i) => i + 1),
    8: List.generate(4, (i) => i + 1),
    9: List.generate(31, (i) => i + 1),
    10: List.generate(24, (i) => i + 1),
    11: List.generate(22, (i) => i + 1),
    12: List.generate(25, (i) => i + 1),
    13: List.generate(29, (i) => i + 1),
    14: List.generate(36, (i) => i + 1),
    15: List.generate(10, (i) => i + 1),
    16: List.generate(13, (i) => i + 1),
    17: List.generate(10, (i) => i + 1),
    18: List.generate(42, (i) => i + 1),
    19: List.generate(150, (i) => i + 1),
    20: List.generate(31, (i) => i + 1),
    21: List.generate(12, (i) => i + 1),
    22: List.generate(8, (i) => i + 1),
    23: List.generate(66, (i) => i + 1),
    24: List.generate(52, (i) => i + 1),
    25: List.generate(5, (i) => i + 1),
    26: List.generate(48, (i) => i + 1),
    27: List.generate(12, (i) => i + 1),
    28: List.generate(14, (i) => i + 1),
    29: List.generate(3, (i) => i + 1),
    30: List.generate(9, (i) => i + 1),
    31: List.generate(1, (i) => i + 1),
    32: List.generate(4, (i) => i + 1),
    33: List.generate(7, (i) => i + 1),
    34: List.generate(3, (i) => i + 1),
    35: List.generate(3, (i) => i + 1),
    36: List.generate(3, (i) => i + 1),
    37: List.generate(2, (i) => i + 1),
    38: List.generate(14, (i) => i + 1),
    39: List.generate(4, (i) => i + 1),
    40: List.generate(28, (i) => i + 1),
    41: List.generate(16, (i) => i + 1),
    42: List.generate(24, (i) => i + 1),
    43: List.generate(21, (i) => i + 1),
    44: List.generate(28, (i) => i + 1),
    45: List.generate(16, (i) => i + 1),
    46: List.generate(16, (i) => i + 1),
    47: List.generate(13, (i) => i + 1),
    48: List.generate(6, (i) => i + 1),
    49: List.generate(6, (i) => i + 1),
    50: List.generate(4, (i) => i + 1),
    51: List.generate(4, (i) => i + 1),
    52: List.generate(5, (i) => i + 1),
    53: List.generate(3, (i) => i + 1),
    54: List.generate(6, (i) => i + 1),
    55: List.generate(4, (i) => i + 1),
    56: List.generate(3, (i) => i + 1),
    57: List.generate(1, (i) => i + 1),
    58: List.generate(13, (i) => i + 1),
    59: List.generate(5, (i) => i + 1),
    60: List.generate(5, (i) => i + 1),
    61: List.generate(3, (i) => i + 1),
    62: List.generate(5, (i) => i + 1),
    63: List.generate(1, (i) => i + 1),
    64: List.generate(1, (i) => i + 1),
    65: List.generate(1, (i) => i + 1),
    66: List.generate(22, (i) => i + 1),
  };

  final Map<String, List<int>> mapOfBookNamesToChapters = {
    'Genesis': List.generate(50, (i) => i + 1),
    'Exodus': List.generate(40, (i) => i + 1),
    'Leviticus': List.generate(27, (i) => i + 1),
    'Numbers': List.generate(36, (i) => i + 1),
    'Deuteronomy': List.generate(34, (i) => i + 1),
    'Joshua': List.generate(24, (i) => i + 1),
    'Judges': List.generate(21, (i) => i + 1),
    'Ruth': List.generate(4, (i) => i + 1),
    '1 Samuel': List.generate(31, (i) => i + 1),
    '2 Samuel': List.generate(24, (i) => i + 1),
    '1 Kings': List.generate(22, (i) => i + 1),
    '2 Kings': List.generate(25, (i) => i + 1),
    '1 Chronicles': List.generate(29, (i) => i + 1),
    '2 Chronicles': List.generate(36, (i) => i + 1),
    'Ezra': List.generate(10, (i) => i + 1),
    'Nehemiah': List.generate(13, (i) => i + 1),
    'Esther': List.generate(10, (i) => i + 1),
    'Job': List.generate(42, (i) => i + 1),
    'Psalms': List.generate(150, (i) => i + 1),
    'Proverbs': List.generate(31, (i) => i + 1),
    'Ecclesiastes': List.generate(12, (i) => i + 1),
    'Song of Solomon': List.generate(8, (i) => i + 1),
    'Isaiah': List.generate(66, (i) => i + 1),
    'Jeremiah': List.generate(52, (i) => i + 1),
    'Lamentations': List.generate(5, (i) => i + 1),
    'Ezekiel': List.generate(48, (i) => i + 1),
    'Daniel': List.generate(12, (i) => i + 1),
    'Hosea': List.generate(14, (i) => i + 1),
    'Joel': List.generate(3, (i) => i + 1),
    'Amos': List.generate(9, (i) => i + 1),
    'Obadiah': List.generate(1, (i) => i + 1),
    'Jonah': List.generate(4, (i) => i + 1),
    'Micah': List.generate(7, (i) => i + 1),
    'Nahum': List.generate(3, (i) => i + 1),
    'Habakkuk': List.generate(3, (i) => i + 1),
    'Zephaniah': List.generate(3, (i) => i + 1),
    'Haggai': List.generate(2, (i) => i + 1),
    'Zechariah': List.generate(14, (i) => i + 1),
    'Malachi': List.generate(4, (i) => i + 1),
    'Matthew': List.generate(28, (i) => i + 1),
    'Mark': List.generate(16, (i) => i + 1),
    'Luke': List.generate(24, (i) => i + 1),
    'John': List.generate(21, (i) => i + 1),
    'Acts': List.generate(28, (i) => i + 1),
    'Romans': List.generate(16, (i) => i + 1),
    '1 Corinthians': List.generate(16, (i) => i + 1),
    '2 Corinthians': List.generate(13, (i) => i + 1),
    'Galatians': List.generate(6, (i) => i + 1),
    'Ephesians': List.generate(6, (i) => i + 1),
    'Philippians': List.generate(4, (i) => i + 1),
    'Colossians': List.generate(4, (i) => i + 1),
    '1 Thessalonians': List.generate(5, (i) => i + 1),
    '2 Thessalonians': List.generate(3, (i) => i + 1),
    '1 Timothy': List.generate(6, (i) => i + 1),
    '2 Timothy': List.generate(4, (i) => i + 1),
    'Titus': List.generate(3, (i) => i + 1),
    'Philemon': List.generate(1, (i) => i + 1),
    'Hebrews': List.generate(13, (i) => i + 1),
    'James': List.generate(5, (i) => i + 1),
    '1 Peter': List.generate(5, (i) => i + 1),
    '2 Peter': List.generate(3, (i) => i + 1),
    '1 John': List.generate(5, (i) => i + 1),
    '2 John': List.generate(1, (i) => i + 1),
    '3 John': List.generate(1, (i) => i + 1),
    'Jude': List.generate(1, (i) => i + 1),
    'Revelation': List.generate(22, (i) => i + 1),
  };
}
