import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast_listener.dart';

part 'broadcast_listener_dto.freezed.dart';
part 'broadcast_listener_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class BroadcastListenerDto with _$BroadcastListenerDto {
  factory BroadcastListenerDto({
    required String id,
    required String fullName,
  }) = _BroadcastListenerDto;

  factory BroadcastListenerDto.fromDomain(BroadcastListener b) {
    return BroadcastListenerDto(
      id: b.id,
      fullName: b.fullName,
    );
  }

  factory BroadcastListenerDto.fromJson(Map<String, dynamic> json) =>
      _$BroadcastListenerDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$BroadcastListenerDtoToJson(this);
}
