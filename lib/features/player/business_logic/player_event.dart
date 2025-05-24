part of 'player_bloc.dart';

@freezed
class PlayerEvent with _$PlayerEvent {
  const factory PlayerEvent.started(int soundId) = _Started;
  const factory PlayerEvent.play(int? soundId) = _Play;
  const factory PlayerEvent.pause() = _Pause;
  const factory PlayerEvent.setVolume(double volume) = _SetVolume;
  const factory PlayerEvent.setTimer(Duration? duration) = _SetTimer;
  const factory PlayerEvent.timerTicked() = _TimerTicked;
}
