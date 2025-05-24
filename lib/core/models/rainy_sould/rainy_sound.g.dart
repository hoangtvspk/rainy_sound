// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'rainy_sound.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$RainySoundImpl _$$RainySoundImplFromJson(Map<String, dynamic> json) =>
    _$RainySoundImpl(
      id: (json['id'] as num).toInt(),
      title: json['title'] as String,
      description: json['description'] as String,
      audioUrl: json['audioUrl'] as String,
      imageUrl: json['imageUrl'] as String,
      thumbnailUrl: json['thumbnailUrl'] as String,
    );

Map<String, dynamic> _$$RainySoundImplToJson(_$RainySoundImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'description': instance.description,
      'audioUrl': instance.audioUrl,
      'imageUrl': instance.imageUrl,
      'thumbnailUrl': instance.thumbnailUrl,
    };
