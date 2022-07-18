part of 'search_destination_bloc.dart';

@freezed
class SearchDestinationEvent with _$SearchDestinationEvent {
  const factory SearchDestinationEvent.started(
      {required LocationAdress cuurentAdress, required LatLng currentposition}) = _Started;

  const factory SearchDestinationEvent.search({required String input}) = _Search;
  const factory SearchDestinationEvent.placeChoosed({
    required PredictedAdress adressChoosed,
  }) = _PlaceChoosed;
}
