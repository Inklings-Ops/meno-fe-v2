// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_stats_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ProfileStatsDto _$ProfileStatsDtoFromJson(Map<String, dynamic> json) {
  return _ProfileStatsDto.fromJson(json);
}

/// @nodoc
mixin _$ProfileStatsDto {
  int get subscribers => throw _privateConstructorUsedError;
  int get subscriptions => throw _privateConstructorUsedError;
  int get broadcasts => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ProfileStatsDtoCopyWith<ProfileStatsDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStatsDtoCopyWith<$Res> {
  factory $ProfileStatsDtoCopyWith(
          ProfileStatsDto value, $Res Function(ProfileStatsDto) then) =
      _$ProfileStatsDtoCopyWithImpl<$Res, ProfileStatsDto>;
  @useResult
  $Res call({int subscribers, int subscriptions, int broadcasts});
}

/// @nodoc
class _$ProfileStatsDtoCopyWithImpl<$Res, $Val extends ProfileStatsDto>
    implements $ProfileStatsDtoCopyWith<$Res> {
  _$ProfileStatsDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribers = null,
    Object? subscriptions = null,
    Object? broadcasts = null,
  }) {
    return _then(_value.copyWith(
      subscribers: null == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptions: null == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as int,
      broadcasts: null == broadcasts
          ? _value.broadcasts
          : broadcasts // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ProfileStatsDtoCopyWith<$Res>
    implements $ProfileStatsDtoCopyWith<$Res> {
  factory _$$_ProfileStatsDtoCopyWith(
          _$_ProfileStatsDto value, $Res Function(_$_ProfileStatsDto) then) =
      __$$_ProfileStatsDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int subscribers, int subscriptions, int broadcasts});
}

/// @nodoc
class __$$_ProfileStatsDtoCopyWithImpl<$Res>
    extends _$ProfileStatsDtoCopyWithImpl<$Res, _$_ProfileStatsDto>
    implements _$$_ProfileStatsDtoCopyWith<$Res> {
  __$$_ProfileStatsDtoCopyWithImpl(
      _$_ProfileStatsDto _value, $Res Function(_$_ProfileStatsDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribers = null,
    Object? subscriptions = null,
    Object? broadcasts = null,
  }) {
    return _then(_$_ProfileStatsDto(
      subscribers: null == subscribers
          ? _value.subscribers
          : subscribers // ignore: cast_nullable_to_non_nullable
              as int,
      subscriptions: null == subscriptions
          ? _value.subscriptions
          : subscriptions // ignore: cast_nullable_to_non_nullable
              as int,
      broadcasts: null == broadcasts
          ? _value.broadcasts
          : broadcasts // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ProfileStatsDto implements _ProfileStatsDto {
  _$_ProfileStatsDto(
      {required this.subscribers,
      required this.subscriptions,
      required this.broadcasts});

  factory _$_ProfileStatsDto.fromJson(Map<String, dynamic> json) =>
      _$$_ProfileStatsDtoFromJson(json);

  @override
  final int subscribers;
  @override
  final int subscriptions;
  @override
  final int broadcasts;

  @override
  String toString() {
    return 'ProfileStatsDto(subscribers: $subscribers, subscriptions: $subscriptions, broadcasts: $broadcasts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileStatsDto &&
            (identical(other.subscribers, subscribers) ||
                other.subscribers == subscribers) &&
            (identical(other.subscriptions, subscriptions) ||
                other.subscriptions == subscriptions) &&
            (identical(other.broadcasts, broadcasts) ||
                other.broadcasts == broadcasts));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, subscribers, subscriptions, broadcasts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStatsDtoCopyWith<_$_ProfileStatsDto> get copyWith =>
      __$$_ProfileStatsDtoCopyWithImpl<_$_ProfileStatsDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ProfileStatsDtoToJson(
      this,
    );
  }
}

abstract class _ProfileStatsDto implements ProfileStatsDto {
  factory _ProfileStatsDto(
      {required final int subscribers,
      required final int subscriptions,
      required final int broadcasts}) = _$_ProfileStatsDto;

  factory _ProfileStatsDto.fromJson(Map<String, dynamic> json) =
      _$_ProfileStatsDto.fromJson;

  @override
  int get subscribers;
  @override
  int get subscriptions;
  @override
  int get broadcasts;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStatsDtoCopyWith<_$_ProfileStatsDto> get copyWith =>
      throw _privateConstructorUsedError;
}
