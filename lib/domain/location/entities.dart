import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/domain/location/value_objects.dart';
import 'package:geolocator/geolocator.dart';
part 'entities.freezed.dart';

@freezed
abstract class Adress with _$Adress {
  const factory Adress({
    required LocationAdress formtatedAdress,
    required LatLng position,
    required String placeId,
  }) = _Adress;
}

@freezed
abstract class PredictedAdress with _$PredictedAdress {
  const factory PredictedAdress({
    required String placeId,
    required String mainText,
    required String secondText,
  }) = _PredictedAdress;
}
