import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meno_fe_v2/modules/broadcast/domain/entities/broadcast.dart';

part 'broadcast_list_data.freezed.dart';

@freezed
class BroadcastListData with _$BroadcastListData {
  const factory BroadcastListData({
    required List<Broadcast?> broadcasts,
    required int totalItems,
    required int totalPages,
    required int currentPage,
  }) = _BroadcastListData;

  factory BroadcastListData.empty() {
    return const BroadcastListData(
      broadcasts: [],
      currentPage: 1,
      totalItems: 1,
      totalPages: 1,
    );
  }
}
