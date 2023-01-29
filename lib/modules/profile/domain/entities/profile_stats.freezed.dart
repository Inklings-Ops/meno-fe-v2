// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_stats.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProfileStats {
  int get subscribers => throw _privateConstructorUsedError;
  int get subscriptions => throw _privateConstructorUsedError;
  int get broadcasts => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProfileStatsCopyWith<ProfileStats> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProfileStatsCopyWith<$Res> {
  factory $ProfileStatsCopyWith(
          ProfileStats value, $Res Function(ProfileStats) then) =
      _$ProfileStatsCopyWithImpl<$Res, ProfileStats>;
  @useResult
  $Res call({int subscribers, int subscriptions, int broadcasts});
}

/// @nodoc
class _$ProfileStatsCopyWithImpl<$Res, $Val extends ProfileStats>
    implements $ProfileStatsCopyWith<$Res> {
  _$ProfileStatsCopyWithImpl(this._value, this._then);

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
abstract class _$$_ProfileStatsCopyWith<$Res>
    implements $ProfileStatsCopyWith<$Res> {
  factory _$$_ProfileStatsCopyWith(
          _$_ProfileStats value, $Res Function(_$_ProfileStats) then) =
      __$$_ProfileStatsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int subscribers, int subscriptions, int broadcasts});
}

/// @nodoc
class __$$_ProfileStatsCopyWithImpl<$Res>
    extends _$ProfileStatsCopyWithImpl<$Res, _$_ProfileStats>
    implements _$$_ProfileStatsCopyWith<$Res> {
  __$$_ProfileStatsCopyWithImpl(
      _$_ProfileStats _value, $Res Function(_$_ProfileStats) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subscribers = null,
    Object? subscriptions = null,
    Object? broadcasts = null,
  }) {
    return _then(_$_ProfileStats(
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

class _$_ProfileStats implements _ProfileStats {
  _$_ProfileStats(
      {required this.subscribers,
      required this.subscriptions,
      required this.broadcasts});

  @override
  final int subscribers;
  @override
  final int subscriptions;
  @override
  final int broadcasts;

  @override
  String toString() {
    return 'ProfileStats(subscribers: $subscribers, subscriptions: $subscriptions, broadcasts: $broadcasts)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProfileStats &&
            (identical(other.subscribers, subscribers) ||
                other.subscribers == subscribers) &&
            (identical(other.subscriptions, subscriptions) ||
                other.subscriptions == subscriptions) &&
            (identical(other.broadcasts, broadcasts) ||
                other.broadcasts == broadcasts));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, subscribers, subscriptions, broadcasts);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ProfileStatsCopyWith<_$_ProfileStats> get copyWith =>
      __$$_ProfileStatsCopyWithImpl<_$_ProfileStats>(this, _$identity);
}

abstract class _ProfileStats implements ProfileStats {
  factory _ProfileStats(
      {required final int subscribers,
      required final int subscriptions,
      required final int broadcasts}) = _$_ProfileStats;

  @override
  int get subscribers;
  @override
  int get subscriptions;
  @override
  int get broadcasts;
  @override
  @JsonKey(ignore: true)
  _$$_ProfileStatsCopyWith<_$_ProfileStats> get copyWith =>
      throw _privateConstructorUsedError;
}
