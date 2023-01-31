import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation_dto.freezed.dart';
part 'translation_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class TranslationDto with _$TranslationDto {
  factory TranslationDto({String? translation}) = _TranslationDto;

  factory TranslationDto.fromJson(Map<String, dynamic> json) =>
      _$TranslationDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$TranslationDtoToJson(this);
}
