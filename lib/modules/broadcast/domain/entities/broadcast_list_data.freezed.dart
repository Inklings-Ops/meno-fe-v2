// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcast_list_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BroadcastListData {
  List<Broadcast?> get broadcasts => throw _privateConstructorUsedError;
  int get totalItems => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get currentPage => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BroadcastListDataCopyWith<BroadcastListData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastListDataCopyWith<$Res> {
  factory $BroadcastListDataCopyWith(
          BroadcastListData value, $Res Function(BroadcastListData) then) =
      _$BroadcastListDataCopyWithImpl<$Res, BroadcastListData>;
  @useResult
  $Res call(
      {List<Broadcast?> broadcasts,
      int totalItems,
      int totalPages,
      int currentPage});
}

/// @nodoc
class _$BroadcastListDataCopyWithImpl<$Res, $Val extends BroadcastListData>
    implements $BroadcastListDataCopyWith<$Res> {
  _$BroadcastListDataCopyWithImpl(this._value, this._then);

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
              as List<Broadcast?>,
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
abstract class _$$_BroadcastListDataCopyWith<$Res>
    implements $BroadcastListDataCopyWith<$Res> {
  factory _$$_BroadcastListDataCopyWith(_$_BroadcastListData value,
          $Res Function(_$_BroadcastListData) then) =
      __$$_BroadcastListDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<Broadcast?> broadcasts,
      int totalItems,
      int totalPages,
      int currentPage});
}

/// @nodoc
class __$$_BroadcastListDataCopyWithImpl<$Res>
    extends _$BroadcastListDataCopyWithImpl<$Res, _$_BroadcastListData>
    implements _$$_BroadcastListDataCopyWith<$Res> {
  __$$_BroadcastListDataCopyWithImpl(
      _$_BroadcastListData _value, $Res Function(_$_BroadcastListData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? broadcasts = null,
    Object? totalItems = null,
    Object? totalPages = null,
    Object? currentPage = null,
  }) {
    return _then(_$_BroadcastListData(
      broadcasts: null == broadcasts
          ? _value._broadcasts
          : broadcasts // ignore: cast_nullable_to_non_nullable
              as List<Broadcast?>,
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

class _$_BroadcastListData implements _BroadcastListData {
  const _$_BroadcastListData(
      {required final List<Broadcast?> broadcasts,
      required this.totalItems,
      required this.totalPages,
      required this.currentPage})
      : _broadcasts = broadcasts;

  final List<Broadcast?> _broadcasts;
  @override
  List<Broadcast?> get broadcasts {
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
    return 'BroadcastListData(broadcasts: $broadcasts, totalItems: $totalItems, totalPages: $totalPages, currentPage: $currentPage)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcastListData &&
            const DeepCollectionEquality()
                .equals(other._broadcasts, _broadcasts) &&
            (identical(other.totalItems, totalItems) ||
                other.totalItems == totalItems) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

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
  _$$_BroadcastListDataCopyWith<_$_BroadcastListData> get copyWith =>
      __$$_BroadcastListDataCopyWithImpl<_$_BroadcastListData>(
          this, _$identity);
}

abstract class _BroadcastListData implements BroadcastListData {
  const factory _BroadcastListData(
      {required final List<Broadcast?> broadcasts,
      required final int totalItems,
      required final int totalPages,
      required final int currentPage}) = _$_BroadcastListData;

  @override
  List<Broadcast?> get broadcasts;
  @override
  int get totalItems;
  @override
  int get totalPages;
  @override
  int get currentPage;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcastListDataCopyWith<_$_BroadcastListData> get copyWith =>
      throw _privateConstructorUsedError;
}
