import 'package:freezed_annotation/freezed_annotation.dart';

part 'rainy_sound.freezed.dart';
part 'rainy_sound.g.dart';

@freezed
class RainySound with _$RainySound {
  const factory RainySound({
    required int id,
    required String title,
    required String description,
    required String audioUrl,
    required String imageUrl,
    required String thumbnailUrl,
  }) = _RainySound;

  factory RainySound.fromJson(Map<String, dynamic> json) =>
      _$RainySoundFromJson(json);
}
