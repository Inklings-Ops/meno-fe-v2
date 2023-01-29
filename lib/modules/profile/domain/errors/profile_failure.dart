import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failure.freezed.dart';

@freezed
class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.message(String message) = _ProfileFailureMessage;
  const factory ProfileFailure.serverError() = _ProfileServerError;
}
