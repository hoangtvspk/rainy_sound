// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'player_status.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PlayerStatus _$PlayerStatusFromJson(Map<String, dynamic> json) {
  return _PlayerStatus.fromJson(json);
}

/// @nodoc
mixin _$PlayerStatus {
  PlayerState get state => throw _privateConstructorUsedError;
  Duration get position => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;
  double get volume => throw _privateConstructorUsedError;
  bool get isMuted => throw _privateConstructorUsedError;
  String? get currentTrackId => throw _privateConstructorUsedError;
  String? get errorMessage => throw _privateConstructorUsedError;
  String? get audioUrl => throw _privateConstructorUsedError;

  /// Serializes this PlayerStatus to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of PlayerStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PlayerStatusCopyWith<PlayerStatus> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PlayerStatusCopyWith<$Res> {
  factory $PlayerStatusCopyWith(
          PlayerStatus value, $Res Function(PlayerStatus) then) =
      _$PlayerStatusCopyWithImpl<$Res, PlayerStatus>;
  @useResult
  $Res call(
      {PlayerState state,
      Duration position,
      Duration duration,
      double volume,
      bool isMuted,
      String? currentTrackId,
      String? errorMessage,
      String? audioUrl});
}

/// @nodoc
class _$PlayerStatusCopyWithImpl<$Res, $Val extends PlayerStatus>
    implements $PlayerStatusCopyWith<$Res> {
  _$PlayerStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PlayerStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? position = null,
    Object? duration = null,
    Object? volume = null,
    Object? isMuted = null,
    Object? currentTrackId = freezed,
    Object? errorMessage = freezed,
    Object? audioUrl = freezed,
  }) {
    return _then(_value.copyWith(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PlayerState,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTrackId: freezed == currentTrackId
          ? _value.currentTrackId
          : currentTrackId // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PlayerStatusImplCopyWith<$Res>
    implements $PlayerStatusCopyWith<$Res> {
  factory _$$PlayerStatusImplCopyWith(
          _$PlayerStatusImpl value, $Res Function(_$PlayerStatusImpl) then) =
      __$$PlayerStatusImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {PlayerState state,
      Duration position,
      Duration duration,
      double volume,
      bool isMuted,
      String? currentTrackId,
      String? errorMessage,
      String? audioUrl});
}

/// @nodoc
class __$$PlayerStatusImplCopyWithImpl<$Res>
    extends _$PlayerStatusCopyWithImpl<$Res, _$PlayerStatusImpl>
    implements _$$PlayerStatusImplCopyWith<$Res> {
  __$$PlayerStatusImplCopyWithImpl(
      _$PlayerStatusImpl _value, $Res Function(_$PlayerStatusImpl) _then)
      : super(_value, _then);

  /// Create a copy of PlayerStatus
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? state = null,
    Object? position = null,
    Object? duration = null,
    Object? volume = null,
    Object? isMuted = null,
    Object? currentTrackId = freezed,
    Object? errorMessage = freezed,
    Object? audioUrl = freezed,
  }) {
    return _then(_$PlayerStatusImpl(
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as PlayerState,
      position: null == position
          ? _value.position
          : position // ignore: cast_nullable_to_non_nullable
              as Duration,
      duration: null == duration
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
      volume: null == volume
          ? _value.volume
          : volume // ignore: cast_nullable_to_non_nullable
              as double,
      isMuted: null == isMuted
          ? _value.isMuted
          : isMuted // ignore: cast_nullable_to_non_nullable
              as bool,
      currentTrackId: freezed == currentTrackId
          ? _value.currentTrackId
          : currentTrackId // ignore: cast_nullable_to_non_nullable
              as String?,
      errorMessage: freezed == errorMessage
          ? _value.errorMessage
          : errorMessage // ignore: cast_nullable_to_non_nullable
              as String?,
      audioUrl: freezed == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PlayerStatusImpl implements _PlayerStatus {
  const _$PlayerStatusImpl(
      {this.state = PlayerState.initial,
      this.position = Duration.zero,
      this.duration = Duration.zero,
      this.volume = 1.0,
      this.isMuted = false,
      this.currentTrackId,
      this.errorMessage,
      this.audioUrl});

  factory _$PlayerStatusImpl.fromJson(Map<String, dynamic> json) =>
      _$$PlayerStatusImplFromJson(json);

  @override
  @JsonKey()
  final PlayerState state;
  @override
  @JsonKey()
  final Duration position;
  @override
  @JsonKey()
  final Duration duration;
  @override
  @JsonKey()
  final double volume;
  @override
  @JsonKey()
  final bool isMuted;
  @override
  final String? currentTrackId;
  @override
  final String? errorMessage;
  @override
  final String? audioUrl;

  @override
  String toString() {
    return 'PlayerStatus(state: $state, position: $position, duration: $duration, volume: $volume, isMuted: $isMuted, currentTrackId: $currentTrackId, errorMessage: $errorMessage, audioUrl: $audioUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PlayerStatusImpl &&
            (identical(other.state, state) || other.state == state) &&
            (identical(other.position, position) ||
                other.position == position) &&
            (identical(other.duration, duration) ||
                other.duration == duration) &&
            (identical(other.volume, volume) || other.volume == volume) &&
            (identical(other.isMuted, isMuted) || other.isMuted == isMuted) &&
            (identical(other.currentTrackId, currentTrackId) ||
                other.currentTrackId == currentTrackId) &&
            (identical(other.errorMessage, errorMessage) ||
                other.errorMessage == errorMessage) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, state, position, duration,
      volume, isMuted, currentTrackId, errorMessage, audioUrl);

  /// Create a copy of PlayerStatus
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PlayerStatusImplCopyWith<_$PlayerStatusImpl> get copyWith =>
      __$$PlayerStatusImplCopyWithImpl<_$PlayerStatusImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PlayerStatusImplToJson(
      this,
    );
  }
}

abstract class _PlayerStatus implements PlayerStatus {
  const factory _PlayerStatus(
      {final PlayerState state,
      final Duration position,
      final Duration duration,
      final double volume,
      final bool isMuted,
      final String? currentTrackId,
      final String? errorMessage,
      final String? audioUrl}) = _$PlayerStatusImpl;

  factory _PlayerStatus.fromJson(Map<String, dynamic> json) =
      _$PlayerStatusImpl.fromJson;

  @override
  PlayerState get state;
  @override
  Duration get position;
  @override
  Duration get duration;
  @override
  double get volume;
  @override
  bool get isMuted;
  @override
  String? get currentTrackId;
  @override
  String? get errorMessage;
  @override
  String? get audioUrl;

  /// Create a copy of PlayerStatus
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PlayerStatusImplCopyWith<_$PlayerStatusImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
