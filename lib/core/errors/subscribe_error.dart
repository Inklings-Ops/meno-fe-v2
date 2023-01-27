// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'subscribe_error.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class SubscribeError extends Equatable {
  const SubscribeError({this.userId});

  final String? userId;

  factory SubscribeError.fromJson(Map<String, dynamic> json) =>
      _$SubscribeErrorFromJson(json);

  Map<String, dynamic> toJson() => _$SubscribeErrorToJson(this);

  @override
  List<Object?> get props => [userId];
}
