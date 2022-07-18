// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_destination_bloc.dart';

class SearchDestinationState {
  Adress userAdress;
  Option<List<PredictedAdress>> searchAdresses;
  bool isloading;
  Option<LocationFailure> failureOption;
  Option<PlaceDetails> placeChoosed;
  SearchDestinationState({
    required this.userAdress,
    required this.searchAdresses,
    required this.isloading,
    required this.failureOption,
    required this.placeChoosed,
  });

  factory SearchDestinationState.initial() => SearchDestinationState(
        userAdress:
            Adress(placeId: '', formtatedAdress: LocationAdress(''), position: LatLng(0, 0)),
        searchAdresses: none<List<PredictedAdress>>(),
        isloading: false,
        failureOption: none(),
        placeChoosed: none(),
      );

  @override
  bool operator ==(covariant SearchDestinationState other) {
    if (identical(this, other)) return true;

    return other.userAdress == userAdress &&
        other.searchAdresses == searchAdresses &&
        other.isloading == isloading &&
        other.failureOption == failureOption &&
        other.placeChoosed == placeChoosed;
  }

  @override
  int get hashCode {
    return userAdress.hashCode ^
        searchAdresses.hashCode ^
        isloading.hashCode ^
        failureOption.hashCode ^
        placeChoosed.hashCode;
  }

  SearchDestinationState copyWith({
    Adress? userAdress,
    Option<List<PredictedAdress>>? searchAdresses,
    bool? isloading,
    Option<LocationFailure>? failureOption,
    Option<PlaceDetails>? placeChoosed,
  }) {
    return SearchDestinationState(
      userAdress: userAdress ?? this.userAdress,
      searchAdresses: searchAdresses ?? this.searchAdresses,
      isloading: isloading ?? this.isloading,
      failureOption: failureOption ?? this.failureOption,
      placeChoosed: placeChoosed ?? this.placeChoosed,
    );
  }

  @override
  String toString() {
    return 'SearchDestinationState(userAdress: $userAdress, searchAdresses: $searchAdresses, isloading: $isloading, failureOption: $failureOption, placeChoosed: $placeChoosed)';
  }
}
