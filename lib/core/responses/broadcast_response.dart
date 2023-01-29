import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meno_fe_v2/core/errors/broadcast_error.dart';

part 'broadcast_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  genericArgumentFactories: true,
)
class BroadcastResponse<T> extends Equatable {
  const BroadcastResponse({
    this.statusCode,
    this.message,
    this.error,
    this.path,
    this.status,
    this.data,
  });

  final int? statusCode;
  final String? message;
  final BroadcastError? error;
  final String? path;
  final bool? status;
  final T? data;

  factory BroadcastResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$BroadcastResponseFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) =>
      _$BroadcastResponseToJson<T>(this, toJsonT);

  @override
  List<Object?> get props => [
        status,
        statusCode,
        message,
        error,
        path,
        data,
      ];
}
