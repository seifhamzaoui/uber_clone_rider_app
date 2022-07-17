// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'search_destination_bloc.dart';

class SearchDestinationState {
  Adress userAdress;
  Option<List<PredictedAdress>> searchAdresses;
  bool isloading;
  Option<LocationFailure> failureOption;
  SearchDestinationState({
    required this.userAdress,
    required this.searchAdresses,
    required this.isloading,
    required this.failureOption,
  });

  factory SearchDestinationState.initial() => SearchDestinationState(
      userAdress: Adress(placeId: '', formtatedAdress: LocationAdress(''), position: LatLng(0, 0)),
      searchAdresses: none<List<PredictedAdress>>(),
      isloading: false,
      failureOption: none());

  @override
  bool operator ==(covariant SearchDestinationState other) {
    if (identical(this, other)) return true;

    return other.userAdress == userAdress &&
        other.searchAdresses == searchAdresses &&
        other.isloading == isloading &&
        other.failureOption == failureOption;
  }

  @override
  int get hashCode {
    return userAdress.hashCode ^
        searchAdresses.hashCode ^
        isloading.hashCode ^
        failureOption.hashCode;
  }

  SearchDestinationState copyWith({
    Adress? userAdress,
    Option<List<PredictedAdress>>? searchAdresses,
    bool? isloading,
    Option<LocationFailure>? failureOption,
  }) {
    return SearchDestinationState(
      userAdress: userAdress ?? this.userAdress,
      searchAdresses: searchAdresses ?? this.searchAdresses,
      isloading: isloading ?? this.isloading,
      failureOption: failureOption ?? this.failureOption,
    );
  }
}
