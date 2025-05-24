part of 'player_bloc.dart';

@freezed
class PlayerState with _$PlayerState {
  const factory PlayerState({
    RainySound? sound,
    RainySound? playingSound,
    @Default(false) bool isPlaying,
    @Default(1.0) double volume,
    Duration? timer,
    @Default(false) bool isTimerActive,
  }) = _PlayerState;
}
