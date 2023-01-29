// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_stats_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Map<String, dynamic> _$ProfileStatsDtoToJson(ProfileStatsDto instance) =>
    <String, dynamic>{
      'subscribers': instance.subscribers,
      'subscriptions': instance.subscriptions,
      'broadcasts': instance.broadcasts,
    };

_$_ProfileStatsDto _$$_ProfileStatsDtoFromJson(Map<String, dynamic> json) =>
    _$_ProfileStatsDto(
      subscribers: json['subscribers'] as int,
      subscriptions: json['subscriptions'] as int,
      broadcasts: json['broadcasts'] as int,
    );

Map<String, dynamic> _$$_ProfileStatsDtoToJson(_$_ProfileStatsDto instance) =>
    <String, dynamic>{
      'subscribers': instance.subscribers,
      'subscriptions': instance.subscriptions,
      'broadcasts': instance.broadcasts,
    };
