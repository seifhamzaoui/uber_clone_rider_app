import 'package:freezed_annotation/freezed_annotation.dart';
part 'adress_dto.freezed.dart';
part 'adress_dto.g.dart';

@freezed
abstract class AdressDto with _$AdressDto {
  const factory AdressDto({required String formatted_address}) = _AdressDto;
  factory AdressDto.fromJson(Map<String, dynamic> json) => _$AdressDtoFromJson(json);
}
