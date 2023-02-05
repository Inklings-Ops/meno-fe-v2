import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/book.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/dtos/book_dto.dart';

@lazySingleton
class BookMapper {
  Book? toDomain(BookDto? dto) {
    if (dto == null) return null;

    return Book(name: dto.name, numberOfChapters: dto.numberOfChapters);
  }
}
