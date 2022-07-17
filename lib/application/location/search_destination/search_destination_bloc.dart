// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:uber_clone/domain/location/I_location_reository.dart';
import 'package:uber_clone/domain/location/entities.dart';
import 'package:uber_clone/domain/location/location_failure.dart';
import 'package:uber_clone/domain/location/value_objects.dart';

part 'search_destination_bloc.freezed.dart';
part 'search_destination_event.dart';
part 'search_destination_state.dart';

@Injectable()
class SearchDestinationBloc extends Bloc<SearchDestinationEvent, SearchDestinationState> {
  ILocationRepository _locationRepository;
  SearchDestinationBloc(
    this._locationRepository,
  ) : super(SearchDestinationState.initial()) {
    on<SearchDestinationEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          emit(
            state.copyWith(
              userAdress: state.userAdress.copyWith(
                formtatedAdress: e.cuurentAdress,
                position: e.currentposition,
              ),
            ),
          );
          print(state.userAdress.formtatedAdress.value.fold((l) => 'we are fetching...', (r) => r));
        },
        search: (e) async {
          if (e.input.length < 3) {
            emit(
              state.copyWith(
                searchAdresses: none(),
                failureOption: none(),
                isloading: false,
              ),
            );
            return 0;
          }
          emit(state.copyWith(isloading: true, failureOption: none()));
          Either<LocationFailure, List<PredictedAdress>> succesOrFailure =
              await _locationRepository.searchDestinationAdress(e.input);
          succesOrFailure.fold(
            (f) {
              emit(
                  state.copyWith(failureOption: Some(f), isloading: false, searchAdresses: none()));
            },
            (adresses) {
              emit(
                state.copyWith(
                  failureOption: none(),
                  isloading: false,
                  searchAdresses: Some(adresses),
                ),
              );
            },
          );
        },
      );
    });
  }
}
