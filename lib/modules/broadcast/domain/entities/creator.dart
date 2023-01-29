import 'package:freezed_annotation/freezed_annotation.dart';

part 'creator.freezed.dart';

@freezed
class Creator with _$Creator {
  const factory Creator({
    String? id,
    String? fullName,
    String? imageUrl,
  }) = _Creator;

  factory Creator.empty() => const Creator(id: '', fullName: '', imageUrl: '');
}
