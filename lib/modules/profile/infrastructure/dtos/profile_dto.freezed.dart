// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileDto _$ProfileDtoFromJson(Map<String, dynamic> json) {
  return _ProfileDto.fromJson(json);
}

/// @nodoc
mixin _$ProfileDto {
  String get id => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  String? get bio => throw _privateConstructorUsedError;
  String? get imageUrl =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: '_count')
  ProfileStatsDto? get count => throw _privateConstructorUsedError;
  bool? get isSubscribedToUser => throw _privateConstructorUsedError;
  Role get role => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileDtoCopyWith<ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileDtoCopyWith<$Res> {
  factory $ProfileDtoCopyWith(
          ProfileDto value, $Res Function(ProfileDto) then) =
      _$ProfileDtoCopyWithImpl<$Res, ProfileDto>;
  @useResult
  $Res call(
      {String id,
      String fullName,
      String? bio,
      String? imageUrl,
      @JsonKey(name: '_count') ProfileStatsDto? count,
      bool? isSubscribedToUser,
      Role role});

  $ProfileStatsDtoCopyWith<$Res>? get count;
}

/// @nodoc
class _$ProfileDtoCopyWithImpl<$Res, $Val extends ProfileDto>
    implements $ProfileDtoCopyWith<$Res> {
  _$ProfileDtoCopyWithImpl(this._value, this._then);

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
    Object? role = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as ProfileStatsDto?,
      isSubscribedToUser: freezed == isSubscribedToUser
          ? _value.isSubscribedToUser
          : isSubscribedToUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ProfileStatsDtoCopyWith<$Res>? get count {
    if (_value.count == null) {
      return null;
    }

    return $ProfileStatsDtoCopyWith<$Res>(_value.count!, (value) {
      return _then(_value.copyWith(count: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ProfileDtoCopyWith<$Res>
    implements $ProfileDtoCopyWith<$Res> {
  factory _$$_ProfileDtoCopyWith(
          _$_ProfileDto value, $Res Function(_$_ProfileDto) then) =
      __$$_ProfileDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String fullName,
      String? bio,
      String? imageUrl,
      @JsonKey(name: '_count') ProfileStatsDto? count,
      bool? isSubscribedToUser,
      Role role});

  @override
  $ProfileStatsDtoCopyWith<$Res>? get count;
}

/// @nodoc
class __$$_ProfileDtoCopyWithImpl<$Res>
    extends _$ProfileDtoCopyWithImpl<$Res, _$_ProfileDto>
    implements _$$_ProfileDtoCopyWith<$Res> {
  __$$_ProfileDtoCopyWithImpl(
      _$_ProfileDto _value, $Res Function(_$_ProfileDto) _then)
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
    Object? role = null,
  }) {
    return _then(_$_ProfileDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      bio: freezed == bio
          ? _value.bio
          : bio // ignore: cast_nullable_to_non_nullable
              as String?,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      count: freezed == count
          ? _value.count
          : count // ignore: cast_nullable_to_non_nullable
              as ProfileStatsDto?,
      isSubscribedToUser: freezed == isSubscribedToUser
          ? _value.isSubscribedToUser
          : isSubscribedToUser // ignore: cast_nullable_to_non_nullable
              as bool?,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as Role,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileDto implements _ProfileDto {
  _$_ProfileDto(
      {required this.id,
      required this.fullName,
      this.bio,
      this.imageUrl,
      @JsonKey(name: '_count') this.count,
      this.isSubscribedToUser,
      required this.role});

  factory _$_ProfileDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileDtoFromJson(json);

  @override
  final String id;
  @override
  final String fullName;
  @override
  final String? bio;
  @override
  final String? imageUrl;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: '_count')
  final ProfileStatsDto? count;
  @override
  final bool? isSubscribedToUser;
  @override
  final Role role;

  @override
  String toString() {
    return 'ProfileDto(id: $id, fullName: $fullName, bio: $bio, imageUrl: $imageUrl, count: $count, isSubscribedToUser: $isSubscribedToUser, role: $role)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.bio, bio) || other.bio == bio) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.count, count) || other.count == count) &&
            (identical(other.isSubscribedToUser, isSubscribedToUser) ||
                other.isSubscribedToUser == isSubscribedToUser) &&
            (identical(other.role, role) || other.role == role));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, fullName, bio, imageUrl,
      count, isSubscribedToUser, role);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileDtoCopyWith<_$_ProfileDto> get copyWith =>
      __$$_ProfileDtoCopyWithImpl<_$_ProfileDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileDtoToJson(
      this,
    );
  }
}

abstract class _ProfileDto implements ProfileDto {
  factory _ProfileDto(
      {required final String id,
      required final String fullName,
      final String? bio,
      final String? imageUrl,
      @JsonKey(name: '_count') final ProfileStatsDto? count,
      final bool? isSubscribedToUser,
      required final Role role}) = _$_ProfileDto;

  factory _ProfileDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileDto.fromJson;

  @override
  String get id;
  @override
  String get fullName;
  @override
  String? get bio;
  @override
  String? get imageUrl;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: '_count')
  ProfileStatsDto? get count;
  @override
  bool? get isSubscribedToUser;
  @override
  Role get role;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileDtoCopyWith<_$_ProfileDto> get copyWith =>
      throw _privateConstructorUsedError;
}
