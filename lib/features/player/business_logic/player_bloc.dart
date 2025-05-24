import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:rainy_night/core/storage/shared_prefs.dart';
import '../../../core/models/rainy_sould/rainy_sound.dart';
import '../data/repositories/player_audio_repository.dart';
import '../data/services/player_audio_service.dart';

part 'player_bloc.freezed.dart';
part 'player_event.dart';
part 'player_state.dart';

class PlayerBloc extends Bloc<PlayerEvent, PlayerState> {
  final PlayerAudioRepository _repository;
  final PlayerAudioService _audioService;
  Timer? _timer;
  final AppPreferences _appPreferences = AppPreferences();

  PlayerBloc(this._repository, this._audioService)
      : super(const PlayerState()) {
    on<_Started>(_onStarted);
    on<_Play>(_onPlay);
    on<_Pause>(_onPause);
    on<_SetVolume>(_onSetVolume);
    on<_SetTimer>(_onSetTimer);
    on<_TimerTicked>(_onTimerTicked);
  }

  Future<void> _onStarted(_Started event, Emitter<PlayerState> emit) async {
    final sound = await _repository.getSoundById(event.soundId);
    final playingSound =
        state.playingSound ?? _appPreferences.getPlayingSound();
    if (sound != null) {
      emit(state.copyWith(
          sound: sound, isPlaying: sound.id == playingSound?.id));
    }
  }

  Future<void> _onPlay(_Play event, Emitter<PlayerState> emit) async {
    if (state.sound != null) {
      await _audioService.setSource(state.sound!.audioUrl, sound: state.sound);
    }
    if (event.soundId != null) {
      final sound = await _repository.getSoundById(event.soundId!);
      if (sound != null) {
        await _audioService.setSource(sound.audioUrl, sound: sound);
      }
    }
    await _appPreferences.setPlayingSound(state.sound!);
    emit(state.copyWith(isPlaying: true, playingSound: state.sound));
    await _audioService.play();
  }

  Future<void> _onPause(_Pause event, Emitter<PlayerState> emit) async {
    await _appPreferences.clearPlayingSound();
    emit(state.copyWith(isPlaying: false, playingSound: null));
    await _audioService.pause();
  }

  Future<void> _onSetVolume(_SetVolume event, Emitter<PlayerState> emit) async {
    await _audioService.setVolume(event.volume);
    emit(state.copyWith(volume: event.volume));
  }

  Future<void> _onSetTimer(_SetTimer event, Emitter<PlayerState> emit) async {
    _timer?.cancel();
    if (event.duration != null) {
      emit(state.copyWith(timer: event.duration, isTimerActive: true));
      _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
        add(const PlayerEvent.timerTicked());
      });
    } else {
      emit(state.copyWith(timer: null, isTimerActive: false));
    }
  }

  Future<void> _onTimerTicked(
      _TimerTicked event, Emitter<PlayerState> emit) async {
    if (state.timer != null && state.timer!.inSeconds > 0) {
      emit(state.copyWith(timer: state.timer! - const Duration(seconds: 1)));
    } else {
      _timer?.cancel();
      add(const PlayerEvent.pause());
      emit(state.copyWith(timer: null, isTimerActive: false));
    }
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    _audioService.dispose();
    return super.close();
  }
}
