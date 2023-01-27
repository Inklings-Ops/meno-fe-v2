import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_failure.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.message(String message) = _Message;
  const factory AuthFailure.serverError() = _ServerError;
}
