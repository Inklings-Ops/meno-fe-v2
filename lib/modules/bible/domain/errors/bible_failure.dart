import 'package:freezed_annotation/freezed_annotation.dart';

part 'bible_failure.freezed.dart';

@freezed
class BibleFailure with _$BibleFailure {
  const factory BibleFailure.message(String? message) = _BibleFailureMessage;
}
