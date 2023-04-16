import 'package:freezed_annotation/freezed_annotation.dart';

part 'lap.freezed.dart';
part 'lap.g.dart';

@freezed
class Lap with _$Lap {
  const factory Lap({
    required String id,
    required Duration duration,
  }) = _Lap;

  factory Lap.fromJson(Map<String, Object?> json) => _$LapFromJson(json);
}
