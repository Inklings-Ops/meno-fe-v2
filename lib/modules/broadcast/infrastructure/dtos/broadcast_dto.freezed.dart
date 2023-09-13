// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcast_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BroadcastDto _$BroadcastDtoFromJson(Map<String, dynamic> json) {
  return _BroadcastDto.fromJson(json);
}

/// @nodoc
mixin _$BroadcastDto {
  String get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get status => throw _privateConstructorUsedError;
  String? get fullName => throw _privateConstructorUsedError;
  String? get broadcastToken => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  dynamic get imageId => throw _privateConstructorUsedError;
  String? get imageUrl => throw _privateConstructorUsedError;
  DateTime? get startTime => throw _privateConstructorUsedError;
  dynamic get endTime => throw _privateConstructorUsedError;
  DateTime? get createdAt => throw _privateConstructorUsedError;
  dynamic get deleted => throw _privateConstructorUsedError;
  String? get creatorId => throw _privateConstructorUsedError;
  CreatorDto? get creator => throw _privateConstructorUsedError;
  int? get liveListeners => throw _privateConstructorUsedError;
  int? get timeElapsed => throw _privateConstructorUsedError;
  int? get totalListeners => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BroadcastDtoCopyWith<BroadcastDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastDtoCopyWith<$Res> {
  factory $BroadcastDtoCopyWith(
          BroadcastDto value, $Res Function(BroadcastDto) then) =
      _$BroadcastDtoCopyWithImpl<$Res, BroadcastDto>;
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      String? status,
      String? fullName,
      String? broadcastToken,
      String? timezone,
      dynamic imageId,
      String? imageUrl,
      DateTime? startTime,
      dynamic endTime,
      DateTime? createdAt,
      dynamic deleted,
      String? creatorId,
      CreatorDto? creator,
      int? liveListeners,
      int? timeElapsed,
      int? totalListeners});

  $CreatorDtoCopyWith<$Res>? get creator;
}

/// @nodoc
class _$BroadcastDtoCopyWithImpl<$Res, $Val extends BroadcastDto>
    implements $BroadcastDtoCopyWith<$Res> {
  _$BroadcastDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? status = freezed,
    Object? fullName = freezed,
    Object? broadcastToken = freezed,
    Object? timezone = freezed,
    Object? imageId = freezed,
    Object? imageUrl = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? createdAt = freezed,
    Object? deleted = freezed,
    Object? creatorId = freezed,
    Object? creator = freezed,
    Object? liveListeners = freezed,
    Object? timeElapsed = freezed,
    Object? totalListeners = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcastToken: freezed == broadcastToken
          ? _value.broadcastToken
          : broadcastToken // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorDto?,
      liveListeners: freezed == liveListeners
          ? _value.liveListeners
          : liveListeners // ignore: cast_nullable_to_non_nullable
              as int?,
      timeElapsed: freezed == timeElapsed
          ? _value.timeElapsed
          : timeElapsed // ignore: cast_nullable_to_non_nullable
              as int?,
      totalListeners: freezed == totalListeners
          ? _value.totalListeners
          : totalListeners // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CreatorDtoCopyWith<$Res>? get creator {
    if (_value.creator == null) {
      return null;
    }

    return $CreatorDtoCopyWith<$Res>(_value.creator!, (value) {
      return _then(_value.copyWith(creator: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BroadcastDtoCopyWith<$Res>
    implements $BroadcastDtoCopyWith<$Res> {
  factory _$$_BroadcastDtoCopyWith(
          _$_BroadcastDto value, $Res Function(_$_BroadcastDto) then) =
      __$$_BroadcastDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String id,
      String title,
      String? description,
      String? status,
      String? fullName,
      String? broadcastToken,
      String? timezone,
      dynamic imageId,
      String? imageUrl,
      DateTime? startTime,
      dynamic endTime,
      DateTime? createdAt,
      dynamic deleted,
      String? creatorId,
      CreatorDto? creator,
      int? liveListeners,
      int? timeElapsed,
      int? totalListeners});

  @override
  $CreatorDtoCopyWith<$Res>? get creator;
}

/// @nodoc
class __$$_BroadcastDtoCopyWithImpl<$Res>
    extends _$BroadcastDtoCopyWithImpl<$Res, _$_BroadcastDto>
    implements _$$_BroadcastDtoCopyWith<$Res> {
  __$$_BroadcastDtoCopyWithImpl(
      _$_BroadcastDto _value, $Res Function(_$_BroadcastDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = freezed,
    Object? status = freezed,
    Object? fullName = freezed,
    Object? broadcastToken = freezed,
    Object? timezone = freezed,
    Object? imageId = freezed,
    Object? imageUrl = freezed,
    Object? startTime = freezed,
    Object? endTime = freezed,
    Object? createdAt = freezed,
    Object? deleted = freezed,
    Object? creatorId = freezed,
    Object? creator = freezed,
    Object? liveListeners = freezed,
    Object? timeElapsed = freezed,
    Object? totalListeners = freezed,
  }) {
    return _then(_$_BroadcastDto(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as String?,
      fullName: freezed == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String?,
      broadcastToken: freezed == broadcastToken
          ? _value.broadcastToken
          : broadcastToken // ignore: cast_nullable_to_non_nullable
              as String?,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      imageId: freezed == imageId
          ? _value.imageId
          : imageId // ignore: cast_nullable_to_non_nullable
              as dynamic,
      imageUrl: freezed == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String?,
      startTime: freezed == startTime
          ? _value.startTime
          : startTime // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      endTime: freezed == endTime
          ? _value.endTime
          : endTime // ignore: cast_nullable_to_non_nullable
              as dynamic,
      createdAt: freezed == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      deleted: freezed == deleted
          ? _value.deleted
          : deleted // ignore: cast_nullable_to_non_nullable
              as dynamic,
      creatorId: freezed == creatorId
          ? _value.creatorId
          : creatorId // ignore: cast_nullable_to_non_nullable
              as String?,
      creator: freezed == creator
          ? _value.creator
          : creator // ignore: cast_nullable_to_non_nullable
              as CreatorDto?,
      liveListeners: freezed == liveListeners
          ? _value.liveListeners
          : liveListeners // ignore: cast_nullable_to_non_nullable
              as int?,
      timeElapsed: freezed == timeElapsed
          ? _value.timeElapsed
          : timeElapsed // ignore: cast_nullable_to_non_nullable
              as int?,
      totalListeners: freezed == totalListeners
          ? _value.totalListeners
          : totalListeners // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BroadcastDto implements _BroadcastDto {
  _$_BroadcastDto(
      {required this.id,
      required this.title,
      this.description,
      this.status,
      this.fullName,
      this.broadcastToken,
      this.timezone,
      this.imageId,
      this.imageUrl,
      this.startTime,
      this.endTime,
      this.createdAt,
      this.deleted,
      this.creatorId,
      this.creator,
      this.liveListeners,
      this.timeElapsed,
      this.totalListeners});

  factory _$_BroadcastDto.fromJson(Map<String, dynamic> json) =>
      _$$_BroadcastDtoFromJson(json);

  @override
  final String id;
  @override
  final String title;
  @override
  final String? description;
  @override
  final String? status;
  @override
  final String? fullName;
  @override
  final String? broadcastToken;
  @override
  final String? timezone;
  @override
  final dynamic imageId;
  @override
  final String? imageUrl;
  @override
  final DateTime? startTime;
  @override
  final dynamic endTime;
  @override
  final DateTime? createdAt;
  @override
  final dynamic deleted;
  @override
  final String? creatorId;
  @override
  final CreatorDto? creator;
  @override
  final int? liveListeners;
  @override
  final int? timeElapsed;
  @override
  final int? totalListeners;

  @override
  String toString() {
    return 'BroadcastDto(id: $id, title: $title, description: $description, status: $status, fullName: $fullName, broadcastToken: $broadcastToken, timezone: $timezone, imageId: $imageId, imageUrl: $imageUrl, startTime: $startTime, endTime: $endTime, createdAt: $createdAt, deleted: $deleted, creatorId: $creatorId, creator: $creator, liveListeners: $liveListeners, timeElapsed: $timeElapsed, totalListeners: $totalListeners)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcastDto &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.broadcastToken, broadcastToken) ||
                other.broadcastToken == broadcastToken) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            const DeepCollectionEquality().equals(other.imageId, imageId) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.startTime, startTime) ||
                other.startTime == startTime) &&
            const DeepCollectionEquality().equals(other.endTime, endTime) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            const DeepCollectionEquality().equals(other.deleted, deleted) &&
            (identical(other.creatorId, creatorId) ||
                other.creatorId == creatorId) &&
            (identical(other.creator, creator) || other.creator == creator) &&
            (identical(other.liveListeners, liveListeners) ||
                other.liveListeners == liveListeners) &&
            (identical(other.timeElapsed, timeElapsed) ||
                other.timeElapsed == timeElapsed) &&
            (identical(other.totalListeners, totalListeners) ||
                other.totalListeners == totalListeners));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      title,
      description,
      status,
      fullName,
      broadcastToken,
      timezone,
      const DeepCollectionEquality().hash(imageId),
      imageUrl,
      startTime,
      const DeepCollectionEquality().hash(endTime),
      createdAt,
      const DeepCollectionEquality().hash(deleted),
      creatorId,
      creator,
      liveListeners,
      timeElapsed,
      totalListeners);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcastDtoCopyWith<_$_BroadcastDto> get copyWith =>
      __$$_BroadcastDtoCopyWithImpl<_$_BroadcastDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BroadcastDtoToJson(
      this,
    );
  }
}

abstract class _BroadcastDto implements BroadcastDto {
  factory _BroadcastDto(
      {required final String id,
      required final String title,
      final String? description,
      final String? status,
      final String? fullName,
      final String? broadcastToken,
      final String? timezone,
      final dynamic imageId,
      final String? imageUrl,
      final DateTime? startTime,
      final dynamic endTime,
      final DateTime? createdAt,
      final dynamic deleted,
      final String? creatorId,
      final CreatorDto? creator,
      final int? liveListeners,
      final int? timeElapsed,
      final int? totalListeners}) = _$_BroadcastDto;

  factory _BroadcastDto.fromJson(Map<String, dynamic> json) =
      _$_BroadcastDto.fromJson;

  @override
  String get id;
  @override
  String get title;
  @override
  String? get description;
  @override
  String? get status;
  @override
  String? get fullName;
  @override
  String? get broadcastToken;
  @override
  String? get timezone;
  @override
  dynamic get imageId;
  @override
  String? get imageUrl;
  @override
  DateTime? get startTime;
  @override
  dynamic get endTime;
  @override
  DateTime? get createdAt;
  @override
  dynamic get deleted;
  @override
  String? get creatorId;
  @override
  CreatorDto? get creator;
  @override
  int? get liveListeners;
  @override
  int? get timeElapsed;
  @override
  int? get totalListeners;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcastDtoCopyWith<_$_BroadcastDto> get copyWith =>
      throw _privateConstructorUsedError;
}
