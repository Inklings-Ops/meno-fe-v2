import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/auth/infrastructure/dtos/user_dto.dart';

part 'user_credentials_dto.freezed.dart';
part 'user_credentials_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class UserCredentialsDto with _$UserCredentialsDto {
  factory UserCredentialsDto({
    UserDto? user,
    String? token,
  }) = _UserCredentialsDto;

  factory UserCredentialsDto.fromJson(Map<String, dynamic> json) =>
      _$UserCredentialsDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$UserCredentialsDtoToJson(this);
}
