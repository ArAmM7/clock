// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListDto _$$_ListDtoFromJson(Map json) => _$_ListDto(
      laps: (json['laps'] as List<dynamic>?)
              ?.map((e) => Lap.fromJson(Map<String, Object?>.from(e as Map)))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$$_ListDtoToJson(_$_ListDto instance) =>
    <String, dynamic>{
      'laps': instance.laps.map((e) => e.toJson()).toList(),
    };
