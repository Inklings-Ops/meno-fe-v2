import 'package:freezed_annotation/freezed_annotation.dart';

part 'book_dto.freezed.dart';
part 'book_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class BookDto with _$BookDto {
  factory BookDto({
    required List<String> name,
    required int numberOfChapters,
  }) = _BookDto;

  factory BookDto.fromJson(Map<String, dynamic> json) =>
      _$BookDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$BookDtoToJson(this);
}
