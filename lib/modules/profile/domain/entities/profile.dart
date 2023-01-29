import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/core/value/value_objects.dart';
import 'package:meno_fe_v2/modules/profile/domain/entities/profile_stats.dart';

part 'profile.freezed.dart';

@freezed
class Profile with _$Profile {
  factory Profile({
    required String id,
    required IFullName fullName,
    IBio? bio,
    String? imageUrl,
    ProfileStats? count,
    bool? isSubscribedToUser,
  }) = _Profile;

  factory Profile.empty() {
    return Profile(
      id: '',
      fullName: IFullName(''),
      bio: null,
      count: ProfileStats.empty(),
      imageUrl: '',
      isSubscribedToUser: false,
    );
  }
}
