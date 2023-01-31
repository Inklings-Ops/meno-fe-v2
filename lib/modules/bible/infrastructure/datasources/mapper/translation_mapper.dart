import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/modules/bible/domain/entities/translation.dart';
import 'package:meno_fe_v2/modules/bible/infrastructure/dtos/translation_dto.dart';

@lazySingleton
class TranslationMapper {
  Translation? toDomain(TranslationDto? dto) {
    if (dto == null) return null;

    return Translation(name: dto.name);
  }
}
