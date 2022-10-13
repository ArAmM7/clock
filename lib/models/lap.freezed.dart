// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'lap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Lap _$LapFromJson(Map<String, dynamic> json) {
  return _Lap.fromJson(json);
}

/// @nodoc
mixin _$Lap {
  String get id => throw _privateConstructorUsedError;
  Duration get duration => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LapCopyWith<Lap> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LapCopyWith<$Res> {
  factory $LapCopyWith(Lap value, $Res Function(Lap) then) = _$LapCopyWithImpl<$Res>;
  $Res call({String id, Duration duration});
}

/// @nodoc
class _$LapCopyWithImpl<$Res> implements $LapCopyWith<$Res> {
  _$LapCopyWithImpl(this._value, this._then);

  final Lap _value;
  // ignore: unused_field
  final $Res Function(Lap) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? duration = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
abstract class _$$_LapCopyWith<$Res> implements $LapCopyWith<$Res> {
  factory _$$_LapCopyWith(_$_Lap value, $Res Function(_$_Lap) then) = __$$_LapCopyWithImpl<$Res>;
  @override
  $Res call({String id, Duration duration});
}

/// @nodoc
class __$$_LapCopyWithImpl<$Res> extends _$LapCopyWithImpl<$Res> implements _$$_LapCopyWith<$Res> {
  __$$_LapCopyWithImpl(_$_Lap _value, $Res Function(_$_Lap) _then)
      : super(_value, (v) => _then(v as _$_Lap));

  @override
  _$_Lap get _value => super._value as _$_Lap;

  @override
  $Res call({
    Object? id = freezed,
    Object? duration = freezed,
  }) {
    return _then(_$_Lap(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      duration: duration == freezed
          ? _value.duration
          : duration // ignore: cast_nullable_to_non_nullable
              as Duration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Lap implements _Lap {
  const _$_Lap({required this.id, required this.duration});

  factory _$_Lap.fromJson(Map<String, dynamic> json) => _$$_LapFromJson(json);

  @override
  final String id;
  @override
  final Duration duration;

  @override
  String toString() {
    return 'Lap(id: $id, duration: $duration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Lap &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.duration, duration));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(duration));

  @JsonKey(ignore: true)
  @override
  _$$_LapCopyWith<_$_Lap> get copyWith => __$$_LapCopyWithImpl<_$_Lap>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LapToJson(
      this,
    );
  }
}

abstract class _Lap implements Lap {
  const factory _Lap({required final String id, required final Duration duration}) = _$_Lap;

  factory _Lap.fromJson(Map<String, dynamic> json) = _$_Lap.fromJson;

  @override
  String get id;
  @override
  Duration get duration;
  @override
  @JsonKey(ignore: true)
  _$$_LapCopyWith<_$_Lap> get copyWith => throw _privateConstructorUsedError;
}
