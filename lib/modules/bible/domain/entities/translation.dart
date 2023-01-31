import 'package:freezed_annotation/freezed_annotation.dart';

part 'translation.freezed.dart';

@freezed
class Translation with _$Translation {
  const factory Translation({String? translation}) = _Translation;

  factory Translation.empty() {
    return const Translation(translation: 'kjv');
  }
}
