import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:uber_clone/domain/location/entities.dart';
part 'adress_dto.freezed.dart';
part 'adress_dto.g.dart';

@freezed
abstract class AdressDto with _$AdressDto {
  const factory AdressDto({required String formatted_address}) = _AdressDto;
  factory AdressDto.fromJson(Map<String, dynamic> json) => _$AdressDtoFromJson(json);
}

_mainTextFromjson(Map<dynamic, dynamic> json) => json['main_text'];
_secondTextFromjson(Map<dynamic, dynamic> json) => json['secondary_text'];

@freezed
abstract class PredictionAdressDto implements _$PredictionAdressDto {
  PredictionAdressDto._();
  factory PredictionAdressDto({
    required String place_id,
    @JsonKey(
      name: 'structured_formatting',
      fromJson: _mainTextFromjson,
    )
        required String main_text,
    @JsonKey(
      name: '',
      fromJson: _secondTextFromjson,
    )
        required String secondary_text,
  }) = _PredictionAdressDto;

  factory PredictionAdressDto.fromJson(Map<String, dynamic> json) =>
      _$PredictionAdressDtoFromJson(json);

  PredictedAdress toDomain() {
    return PredictedAdress(
      placeId: place_id,
      mainText: main_text,
      secondText: secondary_text,
    );
  }
}
