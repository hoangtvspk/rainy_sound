// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'player_status.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PlayerStatusImpl _$$PlayerStatusImplFromJson(Map<String, dynamic> json) =>
    _$PlayerStatusImpl(
      state: $enumDecodeNullable(_$PlayerStateEnumMap, json['state']) ??
          PlayerState.initial,
      position: json['position'] == null
          ? Duration.zero
          : Duration(microseconds: (json['position'] as num).toInt()),
      duration: json['duration'] == null
          ? Duration.zero
          : Duration(microseconds: (json['duration'] as num).toInt()),
      volume: (json['volume'] as num?)?.toDouble() ?? 1.0,
      isMuted: json['isMuted'] as bool? ?? false,
      currentTrackId: json['currentTrackId'] as String?,
      errorMessage: json['errorMessage'] as String?,
      audioUrl: json['audioUrl'] as String?,
    );

Map<String, dynamic> _$$PlayerStatusImplToJson(_$PlayerStatusImpl instance) =>
    <String, dynamic>{
      'state': _$PlayerStateEnumMap[instance.state]!,
      'position': instance.position.inMicroseconds,
      'duration': instance.duration.inMicroseconds,
      'volume': instance.volume,
      'isMuted': instance.isMuted,
      'currentTrackId': instance.currentTrackId,
      'errorMessage': instance.errorMessage,
      'audioUrl': instance.audioUrl,
    };

const _$PlayerStateEnumMap = {
  PlayerState.initial: 'initial',
  PlayerState.loading: 'loading',
  PlayerState.playing: 'playing',
  PlayerState.paused: 'paused',
  PlayerState.stopped: 'stopped',
  PlayerState.error: 'error',
};
