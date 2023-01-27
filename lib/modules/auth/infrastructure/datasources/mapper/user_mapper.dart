import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/dtos/user_dto.dart';

@singleton
class UserMapper {
  User? toDomain(UserDto? dto) {
    if (dto == null) return null;

    return User(
      id: dto.id,
      fullName: IFullName(dto.fullName),
      bio: dto.bio == null ? null : IBio(dto.bio!),
      email: IEmail(dto.email),
      emailAccountType: dto.emailAccountType,
      verified: dto.verified,
      imageId: dto.imageId,
      imageUrl: dto.imageUrl,
      deleted: dto.deleted,
    );
  }
}
