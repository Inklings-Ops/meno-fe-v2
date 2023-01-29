import 'package:freezed_annotation/freezed_annotation.dart';

part 'broadcast_failure.freezed.dart';

@freezed
class BroadcastFailure with _$BroadcastFailure {
  const factory BroadcastFailure.message(String message) = _Message;
  const factory BroadcastFailure.serverError() = _ServerError;
}
