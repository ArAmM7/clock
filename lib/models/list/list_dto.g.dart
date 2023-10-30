// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ListDtoImpl _$$ListDtoImplFromJson(Map json) => _$ListDtoImpl(
      laps: (json['laps'] as List<dynamic>?)
              ?.map((e) => Lap.fromJson(Map<String, Object?>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$ListDtoImplToJson(_$ListDtoImpl instance) =>
    <String, dynamic>{
      'laps': instance.laps.map((e) => e.toJson()).toList(),
    };
