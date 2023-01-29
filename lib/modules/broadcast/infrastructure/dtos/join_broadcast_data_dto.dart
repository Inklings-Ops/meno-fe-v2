import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/join_broadcast_data.dart';

part 'join_broadcast_data_dto.freezed.dart';
part 'join_broadcast_data_dto.g.dart';

@freezed
@JsonSerializable(
  explicitToJson: true,
  createFactory: false,
  includeIfNull: false,
)
class JoinBroadcastDataDto with _$JoinBroadcastDataDto {
  factory JoinBroadcastDataDto({String? agoraToken}) = _JoinBroadcastDataDto;

  factory JoinBroadcastDataDto.fromDomain(JoinBroadcastData j) {
    return JoinBroadcastDataDto(agoraToken: j.agoraToken);
  }

  factory JoinBroadcastDataDto.fromJson(Map<String, dynamic> json) =>
      _$JoinBroadcastDataDtoFromJson(json);

  @override
  Map<String, Object?> toJson() => _$JoinBroadcastDataDtoToJson(this);
}
