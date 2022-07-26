// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

import 'package:uber_clone/application/auth/auth_bloc/auth_bloc.dart';
import 'package:uber_clone/domain/auth/I_auth_repository.dart';
import 'package:uber_clone/domain/auth/user_entity.dart';
import 'package:uber_clone/domain/auth/value_objects.dart';
import 'package:uber_clone/domain/location/entities.dart';
import 'package:uber_clone/domain/ride/I_ride_repository.dart';
import 'package:uber_clone/domain/ride/entities.dart';
import 'package:uber_clone/domain/ride/failures.dart';
import 'package:uber_clone/domain/ride/value_objects.dart';
import 'package:uber_clone/infrastructure/ride/rider_repository.dart';

part 'ride_bloc.freezed.dart';
part 'ride_event.dart';
part 'ride_state.dart';

@Singleton()
class RideBloc extends Bloc<RideEvent, RideState> {
  IRideRepository _rideRepository;
  AuthBloc _authBloc;
  RideBloc(
    this._rideRepository,
    this._authBloc,
  ) : super(_Initial()) {
    on<RideEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          print('strted');
          final userOption = _authBloc.state.map(
            initial: (s) => none(),
            Loading: (s) => none(),
            authenticated: (s) => some(s.user),
            notAuthenticated: (s) => none(),
            error: (s) => none(),
          );
          return userOption.fold(() async => print('np user'), (user) async {
            print('user');
            await emit.forEach<Either<RideFailure, Option<RideRequest>>>(
              _rideRepository.getExistingRideRequest(user),
              onData: (forS) {
                return forS.fold(
                  (f) => RideState.error(),
                  (rideoption) => rideoption.fold(
                    () => RideState.noRideExist(),
                    (ride) => RideState.rideWaiting(ride),
                  ),
                );
              },
            );
          });
        },
        requested: (e) async {
          print('request event performed');
          emit(RideState.isLoading());
          final userOption = await _authBloc.state.map(
            initial: (s) => none(),
            Loading: (s) => none(),
            authenticated: (s) => some(s.user),
            notAuthenticated: (s) => none(),
            error: (s) => none(),
          );
          print('user option goten');
          return userOption.fold(() async => print('no user'), (user) async {
            print('there is a user');
            RideRequest rideRequest = RideRequest(
              price: e.price,
              destination: e.destination,
              origin: e.origin,
              driverId: DriverId(''),
              rider: user,
              rideId: UniqueId.fromUniqueId(''),
            );

            final fOrS = await _rideRepository.createRideRequest(rideRequest);
            fOrS.fold(
              (l) async => emit(RideState.error()),
              (r) async => null,
            );
          });
        },
        requestCanceled: (e) async {
          Either<RideFailure, Unit> fOrS = await _rideRepository.cancelRideRequest(e.ride);
          fOrS.fold((l) => emit(RideState.error()), (r) => null);
        },
      );
    });
  }
}
