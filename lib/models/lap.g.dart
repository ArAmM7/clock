// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Lap _$$_LapFromJson(Map json) => _$_Lap(
      id: json['id'] as String,
      duration: Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$_LapToJson(_$_Lap instance) => <String, dynamic>{
      'id': instance.id,
      'duration': instance.duration.inMicroseconds,
    };
