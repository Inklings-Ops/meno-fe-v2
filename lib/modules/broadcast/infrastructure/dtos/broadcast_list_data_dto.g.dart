// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'broadcast_list_data_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$BroadcastListDataDtoToJson(
        BroadcastListDataDto instance) =>
    <String, dynamic>{
      'broadcasts': instance.broadcasts.map((e) => e?.toJson()).toList(),
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
    };

_$_BroadcastListDataDto _$$_BroadcastListDataDtoFromJson(
        Map<String, dynamic> json) =>
    _$_BroadcastListDataDto(
      broadcasts: (json['broadcasts'] as List<dynamic>)
          .map((e) => e == null
              ? null
              : BroadcastDto.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalItems: json['totalItems'] as int,
      totalPages: json['totalPages'] as int,
      currentPage: json['currentPage'] as int,
    );

Map<String, dynamic> _$$_BroadcastListDataDtoToJson(
        _$_BroadcastListDataDto instance) =>
    <String, dynamic>{
      'broadcasts': instance.broadcasts,
      'totalItems': instance.totalItems,
      'totalPages': instance.totalPages,
      'currentPage': instance.currentPage,
    };
