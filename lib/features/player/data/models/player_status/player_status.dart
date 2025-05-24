import 'package:freezed_annotation/freezed_annotation.dart';

part 'player_status.freezed.dart';
part 'player_status.g.dart';

enum PlayerState {
  initial,
  loading,
  playing,
  paused,
  stopped,
  error,
}

@freezed
class PlayerStatus with _$PlayerStatus {
  const factory PlayerStatus({
    @Default(PlayerState.initial) PlayerState state,
    @Default(Duration.zero) Duration position,
    @Default(Duration.zero) Duration duration,
    @Default(1.0) double volume,
    @Default(false) bool isMuted,
    String? currentTrackId,
    String? errorMessage,
    String? audioUrl,
  }) = _PlayerStatus;

  factory PlayerStatus.fromJson(Map<String, dynamic> json) =>
      _$PlayerStatusFromJson(json);
}
