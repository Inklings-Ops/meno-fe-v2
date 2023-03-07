import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/role.dart';

part 'user.freezed.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required IFullName fullName,
    IBio? bio,
    required IEmail email,
    String? emailAccountType,
    bool? verified,
    String? imageId,
    String? imageUrl,
    DateTime? deleted,
    required Role role,
  }) = _User;

  factory User.empty() => User(
        id: '',
        fullName: IFullName(''),
        bio: IBio(''),
        email: IEmail(''),
        emailAccountType: '',
        verified: false,
        imageId: '',
        imageUrl: '',
        deleted: null,
        role: Role.guest,
      );
}
