// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcast_list_data_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BroadcastListDataDto _$BroadcastListDataDtoFromJson(Map<String, dynamic> json) {
  return _BroadcastListDataDto.fromJson(json);
}

/// @nodoc
mixin _$BroadcastListDataDto {
  List<BroadcastDto?> get broadcasts => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BroadcastListDataDtoCopyWith<BroadcastListDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastListDataDtoCopyWith<$Res> {
  factory $BroadcastListDataDtoCopyWith(BroadcastListDataDto value,
          $Res Function(BroadcastListDataDto) then) =
      _$BroadcastListDataDtoCopyWithImpl<$Res, BroadcastListDataDto>;
  @useResult
  $Res call(
      {List<BroadcastDto?> broadcasts,
      int totalItems,
      int totalPages,
      int currentPage});
}

/// @nodoc
class _$BroadcastListDataDtoCopyWithImpl<$Res,
        $Val extends BroadcastListDataDto>
    implements $BroadcastListDataDtoCopyWith<$Res> {
  _$BroadcastListDataDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasts = null,
    Object? totalItems = null,
    Object? totalPages = null,
    Object? currentPage = null,
  }) {
    return _then(_value.copyWith(
      broadcasts: null == broadcasts
          ? _value.broadcasts
          : broadcasts // ignore: cast_nullable_to_non_nullable
              as List<BroadcastDto?>,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BroadcastListDataDtoCopyWith<$Res>
    implements $BroadcastListDataDtoCopyWith<$Res> {
  factory _$$_BroadcastListDataDtoCopyWith(_$_BroadcastListDataDto value,
          $Res Function(_$_BroadcastListDataDto) then) =
      __$$_BroadcastListDataDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BroadcastDto?> broadcasts,
      int totalItems,
      int totalPages,
      int currentPage});
}

/// @nodoc
class __$$_BroadcastListDataDtoCopyWithImpl<$Res>
    extends _$BroadcastListDataDtoCopyWithImpl<$Res, _$_BroadcastListDataDto>
    implements _$$_BroadcastListDataDtoCopyWith<$Res> {
  __$$_BroadcastListDataDtoCopyWithImpl(_$_BroadcastListDataDto _value,
      $Res Function(_$_BroadcastListDataDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasts = null,
    Object? totalItems = null,
    Object? totalPages = null,
    Object? currentPage = null,
  }) {
    return _then(_$_BroadcastListDataDto(
      broadcasts: null == broadcasts
          ? _value._broadcasts
          : broadcasts // ignore: cast_nullable_to_non_nullable
              as List<BroadcastDto?>,
      totalItems: null == totalItems
          ? _value.totalItems
          : totalItems // ignore: cast_nullable_to_non_nullable
              as int,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BroadcastListDataDto implements _BroadcastListDataDto {
  _$_BroadcastListDataDto(
      {required final List<BroadcastDto?> broadcasts,
      required this.totalItems,
      required this.totalPages,
      required this.currentPage})
      : _broadcasts = broadcasts;

  factory _$_BroadcastListDataDto.fromJson(Map<String, dynamic> json) =>
      _$$_BroadcastListDataDtoFromJson(json);

  final List<BroadcastDto?> _broadcasts;
  @override
  List<BroadcastDto?> get broadcasts {
    if (_broadcasts is EqualUnmodifiableListView) return _broadcasts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_broadcasts);
  }

  @override
  final int totalItems;
  @override
  final int totalPages;
  @override
  final int currentPage;

  @override
  String toString() {
    return 'BroadcastListDataDto(broadcasts: $broadcasts, totalItems: $totalItems, totalPages: $totalPages, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcastListDataDto &&
            const DeepCollectionEquality()
                .equals(other._broadcasts, _broadcasts) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_broadcasts),
      totalItems,
      totalPages,
      currentPage);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcastListDataDtoCopyWith<_$_BroadcastListDataDto> get copyWith =>
      __$$_BroadcastListDataDtoCopyWithImpl<_$_BroadcastListDataDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BroadcastListDataDtoToJson(
      this,
    );
  }
}

abstract class _BroadcastListDataDto implements BroadcastListDataDto {
  factory _BroadcastListDataDto(
      {required final List<BroadcastDto?> broadcasts,
      required final int totalItems,
      required final int totalPages,
      required final int currentPage}) = _$_BroadcastListDataDto;

  factory _BroadcastListDataDto.fromJson(Map<String, dynamic> json) =
      _$_BroadcastListDataDto.fromJson;

  @override
  List<BroadcastDto?> get broadcasts;
  @override
  int get totalItems;
  @override
  int get totalPages;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcastListDataDtoCopyWith<_$_BroadcastListDataDto> get copyWith =>
      throw _privateConstructorUsedError;
}
