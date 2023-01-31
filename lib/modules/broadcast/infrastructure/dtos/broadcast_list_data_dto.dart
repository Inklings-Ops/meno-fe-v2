import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_list_data.dart';
import 'package:meno_fe_v2/modules/broadcast/infrastructure/dtos/broadcast_dto.dart';

part 'broadcast_list_data_dto.freezed.dart';
part 'broadcast_list_data_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class BroadcastListDataDto with _$BroadcastListDataDto {
  factory BroadcastListDataDto({
    required List<BroadcastDto?> broadcasts,
    required int totalItems,
    required int totalPages,
    required int currentPage,
  }) = _BroadcastListDataDto;

  factory BroadcastListDataDto.fromDomain(BroadcastListData b) {
    return BroadcastListDataDto(
      broadcasts: b.broadcasts.map((e) => BroadcastDto.fromDomain(e!)).toList(),
      totalItems: b.totalItems,
      totalPages: b.totalPages,
      currentPage: b.currentPage,
    );
  }

  factory BroadcastListDataDto.fromJson(Map<String, dynamic> json) =>
      _$BroadcastListDataDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$BroadcastListDataDtoToJson(this);
}
