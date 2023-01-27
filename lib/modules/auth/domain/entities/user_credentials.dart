import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/auth/domain/entities/user.dart';

part 'user_credentials.freezed.dart';

@freezed
class UserCredentials with _$UserCredentials {
  const factory UserCredentials({User? user, String? token}) = _UserCredentials;

  factory UserCredentials.empty() {
    return UserCredentials(user: User.empty(), token: '');
  }
}
