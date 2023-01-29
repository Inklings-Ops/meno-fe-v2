import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:meno_fe_v2/core/errors/profile_error.dart';

part 'profile_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  genericArgumentFactories: true,
)
class ProfileResponse<T> extends Equatable {
  const ProfileResponse({
    this.statusCode,
    this.message,
    this.error,
    this.path,
    this.status,
    this.data,
  });

  final int? statusCode;
  final String? message;
  final ProfileError? error;
  final String? path;
  final bool? status;
  final T? data;

  factory ProfileResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) =>
      _$ProfileResponseFromJson<T>(json, fromJsonT);

  Map<String, dynamic> toJson(Object Function(T) toJsonT) =>
      _$ProfileResponseToJson<T>(this, toJsonT);

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
