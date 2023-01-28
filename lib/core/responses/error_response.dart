import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'error_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  genericArgumentFactories: true,
)
class ErrorResponse extends Equatable {
  const ErrorResponse({
    this.message,
    this.error,
    this.path,
    this.status,
    this.statusCode,
  });

  final String? message;
  final dynamic error;
  final String? path;
  final bool? status;
  final num? statusCode;

  factory ErrorResponse.fromJson(Map<String, dynamic> json) =>
      _$ErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ErrorResponseToJson(this);

  @override
  List<Object?> get props => [message, error, path, status, statusCode];
}
