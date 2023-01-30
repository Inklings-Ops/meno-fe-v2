// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'broadcast_form_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BroadcastFormState {
  IBroadcastTitle get title => throw _privateConstructorUsedError;
  IBroadcastDescription get description => throw _privateConstructorUsedError;
  String? get timezone => throw _privateConstructorUsedError;
  List<String>? get cohosts => throw _privateConstructorUsedError;
  File? get artwork => throw _privateConstructorUsedError;
  bool get showError => throw _privateConstructorUsedError;
  bool get loading => throw _privateConstructorUsedError;
  Option<Either<BroadcastFailure, Broadcast>> get option =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BroadcastFormStateCopyWith<BroadcastFormState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BroadcastFormStateCopyWith<$Res> {
  factory $BroadcastFormStateCopyWith(
          BroadcastFormState value, $Res Function(BroadcastFormState) then) =
      _$BroadcastFormStateCopyWithImpl<$Res, BroadcastFormState>;
  @useResult
  $Res call(
      {IBroadcastTitle title,
      IBroadcastDescription description,
      String? timezone,
      List<String>? cohosts,
      File? artwork,
      bool showError,
      bool loading,
      Option<Either<BroadcastFailure, Broadcast>> option});
}

/// @nodoc
class _$BroadcastFormStateCopyWithImpl<$Res, $Val extends BroadcastFormState>
    implements $BroadcastFormStateCopyWith<$Res> {
  _$BroadcastFormStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? timezone = freezed,
    Object? cohosts = freezed,
    Object? artwork = freezed,
    Object? showError = null,
    Object? loading = null,
    Object? option = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as IBroadcastTitle,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as IBroadcastDescription,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      cohosts: freezed == cohosts
          ? _value.cohosts
          : cohosts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      artwork: freezed == artwork
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as File?,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<BroadcastFailure, Broadcast>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BroadcastFormStateCopyWith<$Res>
    implements $BroadcastFormStateCopyWith<$Res> {
  factory _$$_BroadcastFormStateCopyWith(_$_BroadcastFormState value,
          $Res Function(_$_BroadcastFormState) then) =
      __$$_BroadcastFormStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {IBroadcastTitle title,
      IBroadcastDescription description,
      String? timezone,
      List<String>? cohosts,
      File? artwork,
      bool showError,
      bool loading,
      Option<Either<BroadcastFailure, Broadcast>> option});
}

/// @nodoc
class __$$_BroadcastFormStateCopyWithImpl<$Res>
    extends _$BroadcastFormStateCopyWithImpl<$Res, _$_BroadcastFormState>
    implements _$$_BroadcastFormStateCopyWith<$Res> {
  __$$_BroadcastFormStateCopyWithImpl(
      _$_BroadcastFormState _value, $Res Function(_$_BroadcastFormState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? description = null,
    Object? timezone = freezed,
    Object? cohosts = freezed,
    Object? artwork = freezed,
    Object? showError = null,
    Object? loading = null,
    Object? option = null,
  }) {
    return _then(_$_BroadcastFormState(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as IBroadcastTitle,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as IBroadcastDescription,
      timezone: freezed == timezone
          ? _value.timezone
          : timezone // ignore: cast_nullable_to_non_nullable
              as String?,
      cohosts: freezed == cohosts
          ? _value._cohosts
          : cohosts // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      artwork: freezed == artwork
          ? _value.artwork
          : artwork // ignore: cast_nullable_to_non_nullable
              as File?,
      showError: null == showError
          ? _value.showError
          : showError // ignore: cast_nullable_to_non_nullable
              as bool,
      loading: null == loading
          ? _value.loading
          : loading // ignore: cast_nullable_to_non_nullable
              as bool,
      option: null == option
          ? _value.option
          : option // ignore: cast_nullable_to_non_nullable
              as Option<Either<BroadcastFailure, Broadcast>>,
    ));
  }
}

/// @nodoc

class _$_BroadcastFormState implements _BroadcastFormState {
  const _$_BroadcastFormState(
      {required this.title,
      required this.description,
      this.timezone,
      final List<String>? cohosts,
      this.artwork,
      required this.showError,
      required this.loading,
      required this.option})
      : _cohosts = cohosts;

  @override
  final IBroadcastTitle title;
  @override
  final IBroadcastDescription description;
  @override
  final String? timezone;
  final List<String>? _cohosts;
  @override
  List<String>? get cohosts {
    final value = _cohosts;
    if (value == null) return null;
    if (_cohosts is EqualUnmodifiableListView) return _cohosts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final File? artwork;
  @override
  final bool showError;
  @override
  final bool loading;
  @override
  final Option<Either<BroadcastFailure, Broadcast>> option;

  @override
  String toString() {
    return 'BroadcastFormState(title: $title, description: $description, timezone: $timezone, cohosts: $cohosts, artwork: $artwork, showError: $showError, loading: $loading, option: $option)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BroadcastFormState &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.timezone, timezone) ||
                other.timezone == timezone) &&
            const DeepCollectionEquality().equals(other._cohosts, _cohosts) &&
            (identical(other.artwork, artwork) || other.artwork == artwork) &&
            (identical(other.showError, showError) ||
                other.showError == showError) &&
            (identical(other.loading, loading) || other.loading == loading) &&
            (identical(other.option, option) || other.option == option));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      title,
      description,
      timezone,
      const DeepCollectionEquality().hash(_cohosts),
      artwork,
      showError,
      loading,
      option);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BroadcastFormStateCopyWith<_$_BroadcastFormState> get copyWith =>
      __$$_BroadcastFormStateCopyWithImpl<_$_BroadcastFormState>(
          this, _$identity);
}

abstract class _BroadcastFormState implements BroadcastFormState {
  const factory _BroadcastFormState(
          {required final IBroadcastTitle title,
          required final IBroadcastDescription description,
          final String? timezone,
          final List<String>? cohosts,
          final File? artwork,
          required final bool showError,
          required final bool loading,
          required final Option<Either<BroadcastFailure, Broadcast>> option}) =
      _$_BroadcastFormState;

  @override
  IBroadcastTitle get title;
  @override
  IBroadcastDescription get description;
  @override
  String? get timezone;
  @override
  List<String>? get cohosts;
  @override
  File? get artwork;
  @override
  bool get showError;
  @override
  bool get loading;
  @override
  Option<Either<BroadcastFailure, Broadcast>> get option;
  @override
  @JsonKey(ignore: true)
  _$$_BroadcastFormStateCopyWith<_$_BroadcastFormState> get copyWith =>
      throw _privateConstructorUsedError;
}
