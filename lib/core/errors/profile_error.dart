// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_error.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class ProfileError extends Equatable {
  const ProfileError({this.fullName, this.bio, this.image});

  final String? fullName;
  final String? bio;
  final String? image;

  factory ProfileError.fromJson(Map<String, dynamic> json) =>
      _$ProfileErrorFromJson(json);

  Map<String, dynamic> toJson() => _$ProfileErrorToJson(this);

  @override
  List<Object?> get props => [fullName, bio, image];
}
