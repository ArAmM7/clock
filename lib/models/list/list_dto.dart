import 'package:freezed_annotation/freezed_annotation.dart';

import '../lap/lap.dart';

part 'list_dto.g.dart';
part 'list_dto.freezed.dart';

@freezed
class ListDto with _$ListDto {
  const factory ListDto({
    @Default([]) List<Lap> laps,
  }) = _ListDto;

  factory ListDto.fromJson(Map<String, dynamic> json) =>
      _$ListDtoFromJson(json);
}
