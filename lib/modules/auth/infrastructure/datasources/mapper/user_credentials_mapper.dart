import 'package:injectable/injectable.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user_credentials.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/datasources/mapper/user_mapper.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/dtos/user_credentials_dto.dart';

@singleton
class UserCredentialsMapper {
  UserCredentials? toDomain(UserCredentialsDto? dto) {
    if (dto == null) return null;

    return UserCredentials(
      user: UserMapper().toDomain(dto.user),
      token: dto.token,
    );
  }
}
