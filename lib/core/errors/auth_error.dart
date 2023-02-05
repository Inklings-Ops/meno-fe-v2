// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_error.g.dart';

@JsonSerializable(explicitToJson: true, includeIfNull: false)
class AuthError extends Equatable {
  const AuthError({
    this.fullName,
    this.bio,
    this.email,
    this.password,
    this.image,
    this.code,
    this.type,
    this.mimetype,
    this.idToken,
    this.size,
  });

  final String? fullName;
  final String? bio;
  final String? email;
  final String? password;
  final String? image;
  final String? code;
  final String? type;
  final String? mimetype;
  final String? idToken;
  final String? size;

  factory AuthError.fromJson(Map<String, dynamic> json) =>
      _$AuthErrorFromJson(json);
  Map<String, dynamic> toJson() => _$AuthErrorToJson(this);

  @override
  List<Object?> get props => [
        fullName,
        bio,
        email,
        password,
        image,
        code,
        type,
        mimetype,
        idToken,
        size,
      ];
}
