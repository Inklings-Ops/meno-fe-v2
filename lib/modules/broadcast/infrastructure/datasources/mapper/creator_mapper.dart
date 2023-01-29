import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/creator.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/creator_dto.dart';

@singleton
class CreatorMapper {
  Creator? toDomain(CreatorDto? dto) {
    if (dto == null) return null;

    return Creator(id: dto.id, fullName: dto.fullName, imageUrl: dto.imageUrl);
  }
}
