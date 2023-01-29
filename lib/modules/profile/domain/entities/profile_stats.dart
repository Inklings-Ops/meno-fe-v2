import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_stats.freezed.dart';

@freezed
class ProfileStats with _$ProfileStats {
  factory ProfileStats({
    required int subscribers,
    required int subscriptions,
    required int broadcasts,
  }) = _ProfileStats;

  factory ProfileStats.empty() {
    return ProfileStats(broadcasts: 0, subscribers: 0, subscriptions: 0);
  }
}
