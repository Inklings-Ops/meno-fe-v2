// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Profile {
  String get id => throw _privateConstructorUsedError;
  IFullName get fullName => throw _privateConstructorUsedError;
  IBio? get bio => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  ProfileStats? get count => throw _privateConstructorUsedError;
  bool? get isSubscribedToUser => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileCopyWith<Profile> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileCopyWith<$Res> {
  factory $ProfileCopyWith(Profile value, $Res Function(Profile) then) =
      _$ProfileCopyWithImpl<$Res, Profile>;
  @useResult
  $Res call(
      {String id,
      IFullName fullName,
      IBio? bio,
      String? imageUrl,
      ProfileStats? count,
      bool? isSubscribedToUser});

  $ProfileStatsCopyWith<$Res>? get count;
}

/// @nodoc
class _$ProfileCopyWithImpl<$Res, $Val extends Profile>
    implements $ProfileCopyWith<$Res> {
  _$ProfileCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? bio = freezed,
    Object? imageUrl = freezed,
    Object? count = freezed,
    Object? isSubscribedToUser = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as IFullName,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as IBio?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as ProfileStats?,
      isSubscribedToUser: freezed == isSubscribedToUser
          ? _value.isSubscribedToUser
          : isSubscribedToUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileStatsCopyWith<$Res>? get count {
    if (_value.count == null) {
      return null;
    }

    return $ProfileStatsCopyWith<$Res>(_value.count!, (value) {
      return _then(_value.copyWith(count: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileCopyWith<$Res> implements $ProfileCopyWith<$Res> {
  factory _$$_ProfileCopyWith(
          _$_Profile value, $Res Function(_$_Profile) then) =
      __$$_ProfileCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      IFullName fullName,
      IBio? bio,
      String? imageUrl,
      ProfileStats? count,
      bool? isSubscribedToUser});

  @override
  $ProfileStatsCopyWith<$Res>? get count;
}

/// @nodoc
class __$$_ProfileCopyWithImpl<$Res>
    extends _$ProfileCopyWithImpl<$Res, _$_Profile>
    implements _$$_ProfileCopyWith<$Res> {
  __$$_ProfileCopyWithImpl(_$_Profile _value, $Res Function(_$_Profile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fullName = null,
    Object? bio = freezed,
    Object? imageUrl = freezed,
    Object? count = freezed,
    Object? isSubscribedToUser = freezed,
  }) {
    return _then(_$_Profile(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as IFullName,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as IBio?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as ProfileStats?,
      isSubscribedToUser: freezed == isSubscribedToUser
          ? _value.isSubscribedToUser
          : isSubscribedToUser // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc

class _$_Profile implements _Profile {
  _$_Profile(
      {required this.id,
      required this.fullName,
      this.bio,
      this.imageUrl,
      this.count,
      this.isSubscribedToUser});

  @override
  final String id;
  @override
  final IFullName fullName;
  @override
  final IBio? bio;
  @override
  final String? imageUrl;
  @override
  final ProfileStats? count;
  @override
  final bool? isSubscribedToUser;

  @override
  String toString() {
    return 'Profile(id: $id, fullName: $fullName, bio: $bio, imageUrl: $imageUrl, count: $count, isSubscribedToUser: $isSubscribedToUser)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Profile &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.isSubscribedToUser, isSubscribedToUser) ||
                other.isSubscribedToUser == isSubscribedToUser));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, id, fullName, bio, imageUrl, count, isSubscribedToUser);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      __$$_ProfileCopyWithImpl<_$_Profile>(this, _$identity);
}

abstract class _Profile implements Profile {
  factory _Profile(
      {required final String id,
      required final IFullName fullName,
      final IBio? bio,
      final String? imageUrl,
      final ProfileStats? count,
      final bool? isSubscribedToUser}) = _$_Profile;

  @override
  String get id;
  @override
  IFullName get fullName;
  @override
  IBio? get bio;
  @override
  String? get imageUrl;
  @override
  ProfileStats? get count;
  @override
  bool? get isSubscribedToUser;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileCopyWith<_$_Profile> get copyWith =>
      throw _privateConstructorUsedError;
}
