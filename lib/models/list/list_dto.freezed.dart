// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'list_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ListDto _$ListDtoFromJson(Map<String, dynamic> json) {
  return _ListDto.fromJson(json);
}

/// @nodoc
mixin _$ListDto {
  List<Lap> get laps => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ListDtoCopyWith<ListDto> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ListDtoCopyWith<$Res> {
  factory $ListDtoCopyWith(ListDto value, $Res Function(ListDto) then) =
      _$ListDtoCopyWithImpl<$Res, ListDto>;
  @useResult
  $Res call({List<Lap> laps});
}

/// @nodoc
class _$ListDtoCopyWithImpl<$Res, $Val extends ListDto>
    implements $ListDtoCopyWith<$Res> {
  _$ListDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? laps = null,
  }) {
    return _then(_value.copyWith(
      laps: null == laps
          ? _value.laps
          : laps // ignore: cast_nullable_to_non_nullable
              as List<Lap>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ListDtoImplCopyWith<$Res> implements $ListDtoCopyWith<$Res> {
  factory _$$ListDtoImplCopyWith(
          _$ListDtoImpl value, $Res Function(_$ListDtoImpl) then) =
      __$$ListDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Lap> laps});
}

/// @nodoc
class __$$ListDtoImplCopyWithImpl<$Res>
    extends _$ListDtoCopyWithImpl<$Res, _$ListDtoImpl>
    implements _$$ListDtoImplCopyWith<$Res> {
  __$$ListDtoImplCopyWithImpl(
      _$ListDtoImpl _value, $Res Function(_$ListDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? laps = null,
  }) {
    return _then(_$ListDtoImpl(
      laps: null == laps
          ? _value._laps
          : laps // ignore: cast_nullable_to_non_nullable
              as List<Lap>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ListDtoImpl implements _ListDto {
  const _$ListDtoImpl({final List<Lap> laps = const []}) : _laps = laps;

  factory _$ListDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$ListDtoImplFromJson(json);

  final List<Lap> _laps;
  @override
  @JsonKey()
  List<Lap> get laps {
    if (_laps is EqualUnmodifiableListView) return _laps;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_laps);
  }

  @override
  String toString() {
    return 'ListDto(laps: $laps)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListDtoImpl &&
            const DeepCollectionEquality().equals(other._laps, _laps));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_laps));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ListDtoImplCopyWith<_$ListDtoImpl> get copyWith =>
      __$$ListDtoImplCopyWithImpl<_$ListDtoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ListDtoImplToJson(
      this,
    );
  }
}

abstract class _ListDto implements ListDto {
  const factory _ListDto({final List<Lap> laps}) = _$ListDtoImpl;

  factory _ListDto.fromJson(Map<String, dynamic> json) = _$ListDtoImpl.fromJson;

  @override
  List<Lap> get laps;
  @override
  @JsonKey(ignore: true)
  _$$ListDtoImplCopyWith<_$ListDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
