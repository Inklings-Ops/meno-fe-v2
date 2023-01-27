import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user.dart';

part 'user_dto.freezed.dart';
part 'user_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class UserDto with _$UserDto {
  factory UserDto({
    required String id,
    required String fullName,
    String? bio,
    required String email,
    String? emailAccountType,
    bool? verified,
    String? imageId,
    String? imageUrl,
    DateTime? deleted,
  }) = _UserDto;

  factory UserDto.fromDomain(User user) {
    return UserDto(
      id: user.id,
      fullName: user.fullName.get()!,
      bio: user.bio?.get(),
      email: user.email.get()!,
      emailAccountType: user.emailAccountType,
      verified: user.verified,
      imageId: user.imageId,
      imageUrl: user.imageUrl,
      deleted: user.deleted,
    );
  }

  factory UserDto.fromJson(Map<String, dynamic> json) =>
      _$UserDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$UserDtoToJson(this);
}
