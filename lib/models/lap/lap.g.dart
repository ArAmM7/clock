// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lap.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LapImpl _$$LapImplFromJson(Map json) => _$LapImpl(
      id: json['id'] as String,
      duration: Duration(microseconds: json['duration'] as int),
    );

Map<String, dynamic> _$$LapImplToJson(_$LapImpl instance) => <String, dynamic>{
      'id': instance.id,
      'duration': instance.duration.inMicroseconds,
    };
