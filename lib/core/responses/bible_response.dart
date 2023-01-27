import 'package:equatable/equatable.dart';
import 'package:json_annotation/json_annotation.dart';

part 'bible_response.g.dart';

@JsonSerializable(
  explicitToJson: true,
  includeIfNull: false,
  genericArgumentFactories: true,
)
class BibleResponse<T> extends Equatable {
  const BibleResponse({
    this.data,
    this.message,
    this.success,
  });

  final T? data;
  final String? message;
  final bool? success;

  factory BibleResponse.fromJson(
    Map<String, dynamic> json,
    T Function(Object? json) fromJsonT,
  ) {
    return _$BibleResponseFromJson<T>(json, fromJsonT);
  }

  Map<String, dynamic> toJson(Object Function(T) toJsonT) {
    return _$BibleResponseToJson<T>(this, toJsonT);
  }

  @override
  List<Object?> get props => [data, message, success];
}
