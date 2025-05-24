// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rainy_sound.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

RainySound _$RainySoundFromJson(Map<String, dynamic> json) {
  return _RainySound.fromJson(json);
}

/// @nodoc
mixin _$RainySound {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get audioUrl => throw _privateConstructorUsedError;
  String get imageUrl => throw _privateConstructorUsedError;
  String get thumbnailUrl => throw _privateConstructorUsedError;

  /// Serializes this RainySound to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RainySound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RainySoundCopyWith<RainySound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RainySoundCopyWith<$Res> {
  factory $RainySoundCopyWith(
          RainySound value, $Res Function(RainySound) then) =
      _$RainySoundCopyWithImpl<$Res, RainySound>;
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String audioUrl,
      String imageUrl,
      String thumbnailUrl});
}

/// @nodoc
class _$RainySoundCopyWithImpl<$Res, $Val extends RainySound>
    implements $RainySoundCopyWith<$Res> {
  _$RainySoundCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RainySound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? audioUrl = null,
    Object? imageUrl = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$RainySoundImplCopyWith<$Res>
    implements $RainySoundCopyWith<$Res> {
  factory _$$RainySoundImplCopyWith(
          _$RainySoundImpl value, $Res Function(_$RainySoundImpl) then) =
      __$$RainySoundImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String description,
      String audioUrl,
      String imageUrl,
      String thumbnailUrl});
}

/// @nodoc
class __$$RainySoundImplCopyWithImpl<$Res>
    extends _$RainySoundCopyWithImpl<$Res, _$RainySoundImpl>
    implements _$$RainySoundImplCopyWith<$Res> {
  __$$RainySoundImplCopyWithImpl(
      _$RainySoundImpl _value, $Res Function(_$RainySoundImpl) _then)
      : super(_value, _then);

  /// Create a copy of RainySound
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? description = null,
    Object? audioUrl = null,
    Object? imageUrl = null,
    Object? thumbnailUrl = null,
  }) {
    return _then(_$RainySoundImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      audioUrl: null == audioUrl
          ? _value.audioUrl
          : audioUrl // ignore: cast_nullable_to_non_nullable
              as String,
      imageUrl: null == imageUrl
          ? _value.imageUrl
          : imageUrl // ignore: cast_nullable_to_non_nullable
              as String,
      thumbnailUrl: null == thumbnailUrl
          ? _value.thumbnailUrl
          : thumbnailUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RainySoundImpl implements _RainySound {
  const _$RainySoundImpl(
      {required this.id,
      required this.title,
      required this.description,
      required this.audioUrl,
      required this.imageUrl,
      required this.thumbnailUrl});

  factory _$RainySoundImpl.fromJson(Map<String, dynamic> json) =>
      _$$RainySoundImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String description;
  @override
  final String audioUrl;
  @override
  final String imageUrl;
  @override
  final String thumbnailUrl;

  @override
  String toString() {
    return 'RainySound(id: $id, title: $title, description: $description, audioUrl: $audioUrl, imageUrl: $imageUrl, thumbnailUrl: $thumbnailUrl)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RainySoundImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.audioUrl, audioUrl) ||
                other.audioUrl == audioUrl) &&
            (identical(other.imageUrl, imageUrl) ||
                other.imageUrl == imageUrl) &&
            (identical(other.thumbnailUrl, thumbnailUrl) ||
                other.thumbnailUrl == thumbnailUrl));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, description, audioUrl, imageUrl, thumbnailUrl);

  /// Create a copy of RainySound
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RainySoundImplCopyWith<_$RainySoundImpl> get copyWith =>
      __$$RainySoundImplCopyWithImpl<_$RainySoundImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RainySoundImplToJson(
      this,
    );
  }
}

abstract class _RainySound implements RainySound {
  const factory _RainySound(
      {required final int id,
      required final String title,
      required final String description,
      required final String audioUrl,
      required final String imageUrl,
      required final String thumbnailUrl}) = _$RainySoundImpl;

  factory _RainySound.fromJson(Map<String, dynamic> json) =
      _$RainySoundImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get description;
  @override
  String get audioUrl;
  @override
  String get imageUrl;
  @override
  String get thumbnailUrl;

  /// Create a copy of RainySound
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RainySoundImplCopyWith<_$RainySoundImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
