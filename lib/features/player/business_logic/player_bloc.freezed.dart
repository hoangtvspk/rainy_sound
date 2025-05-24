// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PlayerEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int soundId) started,
    required TResult Function(int? soundId) play,
    required TResult Function() pause,
    required TResult Function(double volume) setVolume,
    required TResult Function(Duration? duration) setTimer,
    required TResult Function() timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int soundId)? started,
    TResult? Function(int? soundId)? play,
    TResult? Function()? pause,
    TResult? Function(double volume)? setVolume,
    TResult? Function(Duration? duration)? setTimer,
    TResult? Function()? timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int soundId)? started,
    TResult Function(int? soundId)? play,
    TResult Function()? pause,
    TResult Function(double volume)? setVolume,
    TResult Function(Duration? duration)? setTimer,
    TResult Function()? timerTicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_SetTimer value) setTimer,
    required TResult Function(_TimerTicked value) timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_SetTimer value)? setTimer,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_SetTimer value)? setTimer,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerEventCopyWith<$Res> {
  factory $PlayerEventCopyWith(
          PlayerEvent value, $Res Function(PlayerEvent) then) =
      _$PlayerEventCopyWithImpl<$Res, PlayerEvent>;
}

/// @nodoc
class _$PlayerEventCopyWithImpl<$Res, $Val extends PlayerEvent>
    implements $PlayerEventCopyWith<$Res> {
  _$PlayerEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$StartedImplCopyWith<$Res> {
  factory _$$StartedImplCopyWith(
          _$StartedImpl value, $Res Function(_$StartedImpl) then) =
      __$$StartedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int soundId});
}

/// @nodoc
class __$$StartedImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$StartedImpl>
    implements _$$StartedImplCopyWith<$Res> {
  __$$StartedImplCopyWithImpl(
      _$StartedImpl _value, $Res Function(_$StartedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soundId = null,
  }) {
    return _then(_$StartedImpl(
      null == soundId
          ? _value.soundId
          : soundId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$StartedImpl implements _Started {
  const _$StartedImpl(this.soundId);

  @override
  final int soundId;

  @override
  String toString() {
    return 'PlayerEvent.started(soundId: $soundId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StartedImpl &&
            (identical(other.soundId, soundId) || other.soundId == soundId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, soundId);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      __$$StartedImplCopyWithImpl<_$StartedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int soundId) started,
    required TResult Function(int? soundId) play,
    required TResult Function() pause,
    required TResult Function(double volume) setVolume,
    required TResult Function(Duration? duration) setTimer,
    required TResult Function() timerTicked,
  }) {
    return started(soundId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int soundId)? started,
    TResult? Function(int? soundId)? play,
    TResult? Function()? pause,
    TResult? Function(double volume)? setVolume,
    TResult? Function(Duration? duration)? setTimer,
    TResult? Function()? timerTicked,
  }) {
    return started?.call(soundId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int soundId)? started,
    TResult Function(int? soundId)? play,
    TResult Function()? pause,
    TResult Function(double volume)? setVolume,
    TResult Function(Duration? duration)? setTimer,
    TResult Function()? timerTicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(soundId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_SetTimer value) setTimer,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_SetTimer value)? setTimer,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_SetTimer value)? setTimer,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements PlayerEvent {
  const factory _Started(final int soundId) = _$StartedImpl;

  int get soundId;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StartedImplCopyWith<_$StartedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PlayImplCopyWith<$Res> {
  factory _$$PlayImplCopyWith(
          _$PlayImpl value, $Res Function(_$PlayImpl) then) =
      __$$PlayImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int? soundId});
}

/// @nodoc
class __$$PlayImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PlayImpl>
    implements _$$PlayImplCopyWith<$Res> {
  __$$PlayImplCopyWithImpl(_$PlayImpl _value, $Res Function(_$PlayImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? soundId = freezed,
  }) {
    return _then(_$PlayImpl(
      freezed == soundId
          ? _value.soundId
          : soundId // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

class _$PlayImpl implements _Play {
  const _$PlayImpl(this.soundId);

  @override
  final int? soundId;

  @override
  String toString() {
    return 'PlayerEvent.play(soundId: $soundId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayImpl &&
            (identical(other.soundId, soundId) || other.soundId == soundId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, soundId);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayImplCopyWith<_$PlayImpl> get copyWith =>
      __$$PlayImplCopyWithImpl<_$PlayImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int soundId) started,
    required TResult Function(int? soundId) play,
    required TResult Function() pause,
    required TResult Function(double volume) setVolume,
    required TResult Function(Duration? duration) setTimer,
    required TResult Function() timerTicked,
  }) {
    return play(soundId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int soundId)? started,
    TResult? Function(int? soundId)? play,
    TResult? Function()? pause,
    TResult? Function(double volume)? setVolume,
    TResult? Function(Duration? duration)? setTimer,
    TResult? Function()? timerTicked,
  }) {
    return play?.call(soundId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int soundId)? started,
    TResult Function(int? soundId)? play,
    TResult Function()? pause,
    TResult Function(double volume)? setVolume,
    TResult Function(Duration? duration)? setTimer,
    TResult Function()? timerTicked,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(soundId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_SetTimer value) setTimer,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return play(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_SetTimer value)? setTimer,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return play?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_SetTimer value)? setTimer,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (play != null) {
      return play(this);
    }
    return orElse();
  }
}

abstract class _Play implements PlayerEvent {
  const factory _Play(final int? soundId) = _$PlayImpl;

  int? get soundId;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayImplCopyWith<_$PlayImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$PauseImplCopyWith<$Res> {
  factory _$$PauseImplCopyWith(
          _$PauseImpl value, $Res Function(_$PauseImpl) then) =
      __$$PauseImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PauseImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$PauseImpl>
    implements _$$PauseImplCopyWith<$Res> {
  __$$PauseImplCopyWithImpl(
      _$PauseImpl _value, $Res Function(_$PauseImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$PauseImpl implements _Pause {
  const _$PauseImpl();

  @override
  String toString() {
    return 'PlayerEvent.pause()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PauseImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int soundId) started,
    required TResult Function(int? soundId) play,
    required TResult Function() pause,
    required TResult Function(double volume) setVolume,
    required TResult Function(Duration? duration) setTimer,
    required TResult Function() timerTicked,
  }) {
    return pause();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int soundId)? started,
    TResult? Function(int? soundId)? play,
    TResult? Function()? pause,
    TResult? Function(double volume)? setVolume,
    TResult? Function(Duration? duration)? setTimer,
    TResult? Function()? timerTicked,
  }) {
    return pause?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int soundId)? started,
    TResult Function(int? soundId)? play,
    TResult Function()? pause,
    TResult Function(double volume)? setVolume,
    TResult Function(Duration? duration)? setTimer,
    TResult Function()? timerTicked,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_SetTimer value) setTimer,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return pause(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_SetTimer value)? setTimer,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return pause?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_SetTimer value)? setTimer,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (pause != null) {
      return pause(this);
    }
    return orElse();
  }
}

abstract class _Pause implements PlayerEvent {
  const factory _Pause() = _$PauseImpl;
}

/// @nodoc
abstract class _$$SetVolumeImplCopyWith<$Res> {
  factory _$$SetVolumeImplCopyWith(
          _$SetVolumeImpl value, $Res Function(_$SetVolumeImpl) then) =
      __$$SetVolumeImplCopyWithImpl<$Res>;
  @useResult
  $Res call({double volume});
}

/// @nodoc
class __$$SetVolumeImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$SetVolumeImpl>
    implements _$$SetVolumeImplCopyWith<$Res> {
  __$$SetVolumeImplCopyWithImpl(
      _$SetVolumeImpl _value, $Res Function(_$SetVolumeImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? volume = null,
  }) {
    return _then(_$SetVolumeImpl(
      null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$SetVolumeImpl implements _SetVolume {
  const _$SetVolumeImpl(this.volume);

  @override
  final double volume;

  @override
  String toString() {
    return 'PlayerEvent.setVolume(volume: $volume)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetVolumeImpl &&
            (identical(other.volume, volume) || other.volume == volume));
  }

  @override
  int get hashCode => Object.hash(runtimeType, volume);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetVolumeImplCopyWith<_$SetVolumeImpl> get copyWith =>
      __$$SetVolumeImplCopyWithImpl<_$SetVolumeImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int soundId) started,
    required TResult Function(int? soundId) play,
    required TResult Function() pause,
    required TResult Function(double volume) setVolume,
    required TResult Function(Duration? duration) setTimer,
    required TResult Function() timerTicked,
  }) {
    return setVolume(volume);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int soundId)? started,
    TResult? Function(int? soundId)? play,
    TResult? Function()? pause,
    TResult? Function(double volume)? setVolume,
    TResult? Function(Duration? duration)? setTimer,
    TResult? Function()? timerTicked,
  }) {
    return setVolume?.call(volume);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int soundId)? started,
    TResult Function(int? soundId)? play,
    TResult Function()? pause,
    TResult Function(double volume)? setVolume,
    TResult Function(Duration? duration)? setTimer,
    TResult Function()? timerTicked,
    required TResult orElse(),
  }) {
    if (setVolume != null) {
      return setVolume(volume);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_SetTimer value) setTimer,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return setVolume(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_SetTimer value)? setTimer,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return setVolume?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_SetTimer value)? setTimer,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (setVolume != null) {
      return setVolume(this);
    }
    return orElse();
  }
}

abstract class _SetVolume implements PlayerEvent {
  const factory _SetVolume(final double volume) = _$SetVolumeImpl;

  double get volume;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetVolumeImplCopyWith<_$SetVolumeImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SetTimerImplCopyWith<$Res> {
  factory _$$SetTimerImplCopyWith(
          _$SetTimerImpl value, $Res Function(_$SetTimerImpl) then) =
      __$$SetTimerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Duration? duration});
}

/// @nodoc
class __$$SetTimerImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$SetTimerImpl>
    implements _$$SetTimerImplCopyWith<$Res> {
  __$$SetTimerImplCopyWithImpl(
      _$SetTimerImpl _value, $Res Function(_$SetTimerImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? duration = freezed,
  }) {
    return _then(_$SetTimerImpl(
      freezed == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration?,
    ));
  }
}

/// @nodoc

class _$SetTimerImpl implements _SetTimer {
  const _$SetTimerImpl(this.duration);

  @override
  final Duration? duration;

  @override
  String toString() {
    return 'PlayerEvent.setTimer(duration: $duration)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SetTimerImpl &&
            (identical(other.duration, duration) ||
                other.duration == duration));
  }

  @override
  int get hashCode => Object.hash(runtimeType, duration);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SetTimerImplCopyWith<_$SetTimerImpl> get copyWith =>
      __$$SetTimerImplCopyWithImpl<_$SetTimerImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int soundId) started,
    required TResult Function(int? soundId) play,
    required TResult Function() pause,
    required TResult Function(double volume) setVolume,
    required TResult Function(Duration? duration) setTimer,
    required TResult Function() timerTicked,
  }) {
    return setTimer(duration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int soundId)? started,
    TResult? Function(int? soundId)? play,
    TResult? Function()? pause,
    TResult? Function(double volume)? setVolume,
    TResult? Function(Duration? duration)? setTimer,
    TResult? Function()? timerTicked,
  }) {
    return setTimer?.call(duration);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int soundId)? started,
    TResult Function(int? soundId)? play,
    TResult Function()? pause,
    TResult Function(double volume)? setVolume,
    TResult Function(Duration? duration)? setTimer,
    TResult Function()? timerTicked,
    required TResult orElse(),
  }) {
    if (setTimer != null) {
      return setTimer(duration);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_SetTimer value) setTimer,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return setTimer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_SetTimer value)? setTimer,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return setTimer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_SetTimer value)? setTimer,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (setTimer != null) {
      return setTimer(this);
    }
    return orElse();
  }
}

abstract class _SetTimer implements PlayerEvent {
  const factory _SetTimer(final Duration? duration) = _$SetTimerImpl;

  Duration? get duration;

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SetTimerImplCopyWith<_$SetTimerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimerTickedImplCopyWith<$Res> {
  factory _$$TimerTickedImplCopyWith(
          _$TimerTickedImpl value, $Res Function(_$TimerTickedImpl) then) =
      __$$TimerTickedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimerTickedImplCopyWithImpl<$Res>
    extends _$PlayerEventCopyWithImpl<$Res, _$TimerTickedImpl>
    implements _$$TimerTickedImplCopyWith<$Res> {
  __$$TimerTickedImplCopyWithImpl(
      _$TimerTickedImpl _value, $Res Function(_$TimerTickedImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TimerTickedImpl implements _TimerTicked {
  const _$TimerTickedImpl();

  @override
  String toString() {
    return 'PlayerEvent.timerTicked()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimerTickedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int soundId) started,
    required TResult Function(int? soundId) play,
    required TResult Function() pause,
    required TResult Function(double volume) setVolume,
    required TResult Function(Duration? duration) setTimer,
    required TResult Function() timerTicked,
  }) {
    return timerTicked();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int soundId)? started,
    TResult? Function(int? soundId)? play,
    TResult? Function()? pause,
    TResult? Function(double volume)? setVolume,
    TResult? Function(Duration? duration)? setTimer,
    TResult? Function()? timerTicked,
  }) {
    return timerTicked?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int soundId)? started,
    TResult Function(int? soundId)? play,
    TResult Function()? pause,
    TResult Function(double volume)? setVolume,
    TResult Function(Duration? duration)? setTimer,
    TResult Function()? timerTicked,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_Play value) play,
    required TResult Function(_Pause value) pause,
    required TResult Function(_SetVolume value) setVolume,
    required TResult Function(_SetTimer value) setTimer,
    required TResult Function(_TimerTicked value) timerTicked,
  }) {
    return timerTicked(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Started value)? started,
    TResult? Function(_Play value)? play,
    TResult? Function(_Pause value)? pause,
    TResult? Function(_SetVolume value)? setVolume,
    TResult? Function(_SetTimer value)? setTimer,
    TResult? Function(_TimerTicked value)? timerTicked,
  }) {
    return timerTicked?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_Play value)? play,
    TResult Function(_Pause value)? pause,
    TResult Function(_SetVolume value)? setVolume,
    TResult Function(_SetTimer value)? setTimer,
    TResult Function(_TimerTicked value)? timerTicked,
    required TResult orElse(),
  }) {
    if (timerTicked != null) {
      return timerTicked(this);
    }
    return orElse();
  }
}

abstract class _TimerTicked implements PlayerEvent {
  const factory _TimerTicked() = _$TimerTickedImpl;
}

/// @nodoc
mixin _$PlayerState {
  RainySound? get sound => throw _privateConstructorUsedError;
  RainySound? get playingSound => throw _privateConstructorUsedError;
  bool get isPlaying => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  Duration? get timer => throw _privateConstructorUsedError;
  bool get isTimerActive => throw _privateConstructorUsedError;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerStateCopyWith<PlayerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStateCopyWith<$Res> {
  factory $PlayerStateCopyWith(
          PlayerState value, $Res Function(PlayerState) then) =
      _$PlayerStateCopyWithImpl<$Res, PlayerState>;
  @useResult
  $Res call(
      {RainySound? sound,
      RainySound? playingSound,
      bool isPlaying,
      double volume,
      Duration? timer,
      bool isTimerActive});

  $RainySoundCopyWith<$Res>? get sound;
  $RainySoundCopyWith<$Res>? get playingSound;
}

/// @nodoc
class _$PlayerStateCopyWithImpl<$Res, $Val extends PlayerState>
    implements $PlayerStateCopyWith<$Res> {
  _$PlayerStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sound = freezed,
    Object? playingSound = freezed,
    Object? isPlaying = null,
    Object? volume = null,
    Object? timer = freezed,
    Object? isTimerActive = null,
  }) {
    return _then(_value.copyWith(
      sound: freezed == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as RainySound?,
      playingSound: freezed == playingSound
          ? _value.playingSound
          : playingSound // ignore: cast_nullable_to_non_nullable
              as RainySound?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Duration?,
      isTimerActive: null == isTimerActive
          ? _value.isTimerActive
          : isTimerActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RainySoundCopyWith<$Res>? get sound {
    if (_value.sound == null) {
      return null;
    }

    return $RainySoundCopyWith<$Res>(_value.sound!, (value) {
      return _then(_value.copyWith(sound: value) as $Val);
    });
  }

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $RainySoundCopyWith<$Res>? get playingSound {
    if (_value.playingSound == null) {
      return null;
    }

    return $RainySoundCopyWith<$Res>(_value.playingSound!, (value) {
      return _then(_value.copyWith(playingSound: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$PlayerStateImplCopyWith<$Res>
    implements $PlayerStateCopyWith<$Res> {
  factory _$$PlayerStateImplCopyWith(
          _$PlayerStateImpl value, $Res Function(_$PlayerStateImpl) then) =
      __$$PlayerStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {RainySound? sound,
      RainySound? playingSound,
      bool isPlaying,
      double volume,
      Duration? timer,
      bool isTimerActive});

  @override
  $RainySoundCopyWith<$Res>? get sound;
  @override
  $RainySoundCopyWith<$Res>? get playingSound;
}

/// @nodoc
class __$$PlayerStateImplCopyWithImpl<$Res>
    extends _$PlayerStateCopyWithImpl<$Res, _$PlayerStateImpl>
    implements _$$PlayerStateImplCopyWith<$Res> {
  __$$PlayerStateImplCopyWithImpl(
      _$PlayerStateImpl _value, $Res Function(_$PlayerStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? sound = freezed,
    Object? playingSound = freezed,
    Object? isPlaying = null,
    Object? volume = null,
    Object? timer = freezed,
    Object? isTimerActive = null,
  }) {
    return _then(_$PlayerStateImpl(
      sound: freezed == sound
          ? _value.sound
          : sound // ignore: cast_nullable_to_non_nullable
              as RainySound?,
      playingSound: freezed == playingSound
          ? _value.playingSound
          : playingSound // ignore: cast_nullable_to_non_nullable
              as RainySound?,
      isPlaying: null == isPlaying
          ? _value.isPlaying
          : isPlaying // ignore: cast_nullable_to_non_nullable
              as bool,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      timer: freezed == timer
          ? _value.timer
          : timer // ignore: cast_nullable_to_non_nullable
              as Duration?,
      isTimerActive: null == isTimerActive
          ? _value.isTimerActive
          : isTimerActive // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$PlayerStateImpl implements _PlayerState {
  const _$PlayerStateImpl(
      {this.sound,
      this.playingSound,
      this.isPlaying = false,
      this.volume = 1.0,
      this.timer,
      this.isTimerActive = false});

  @override
  final RainySound? sound;
  @override
  final RainySound? playingSound;
  @override
  @JsonKey()
  final bool isPlaying;
  @override
  @JsonKey()
  final double volume;
  @override
  final Duration? timer;
  @override
  @JsonKey()
  final bool isTimerActive;

  @override
  String toString() {
    return 'PlayerState(sound: $sound, playingSound: $playingSound, isPlaying: $isPlaying, volume: $volume, timer: $timer, isTimerActive: $isTimerActive)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStateImpl &&
            (identical(other.sound, sound) || other.sound == sound) &&
            (identical(other.playingSound, playingSound) ||
                other.playingSound == playingSound) &&
            (identical(other.isPlaying, isPlaying) ||
                other.isPlaying == isPlaying) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.timer, timer) || other.timer == timer) &&
            (identical(other.isTimerActive, isTimerActive) ||
                other.isTimerActive == isTimerActive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, sound, playingSound, isPlaying,
      volume, timer, isTimerActive);

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      __$$PlayerStateImplCopyWithImpl<_$PlayerStateImpl>(this, _$identity);
}

abstract class _PlayerState implements PlayerState {
  const factory _PlayerState(
      {final RainySound? sound,
      final RainySound? playingSound,
      final bool isPlaying,
      final double volume,
      final Duration? timer,
      final bool isTimerActive}) = _$PlayerStateImpl;

  @override
  RainySound? get sound;
  @override
  RainySound? get playingSound;
  @override
  bool get isPlaying;
  @override
  double get volume;
  @override
  Duration? get timer;
  @override
  bool get isTimerActive;

  /// Create a copy of PlayerState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerStateImplCopyWith<_$PlayerStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
