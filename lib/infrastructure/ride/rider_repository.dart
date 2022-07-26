// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:injectable/injectable.dart';
import 'package:uber_clone/domain/auth/I_auth_repository.dart';
import 'package:uber_clone/domain/auth/user_entity.dart';
import 'dart:convert';
import 'package:uber_clone/domain/ride/I_ride_repository.dart';
import 'package:uber_clone/domain/ride/entities.dart';
import 'package:uber_clone/domain/ride/failures.dart';
import 'package:uber_clone/infrastructure/auth/register.dto.dart';
import 'package:uber_clone/infrastructure/ride/dtos.dart';

@Injectable(as: IRideRepository)
class RideRepository implements IRideRepository {
  IAuthRepository _authRepository;
  FirebaseDatabase _firebaseDatabase;
  RideRepository(
    this._authRepository,
    this._firebaseDatabase,
  );

  @override
  Future<Either<RideFailure, Unit>> createRideRequest(RideRequest ride) async {
    final fOrS = await getExistingRideRequest(ride.rider).first;
    return fOrS.fold(
      (l) => left(RideFailure.serverError()),
      (r) async {
        return r.fold(
          () async {
            RideRequesDto rideDto = RideRequesDto.fromDomain(ride);
            DatabaseReference actualRideRef = _firebaseDatabase.ref('rides').push();
            try {
              print('we are ceating your ride');
              Map<String, dynamic> json = rideDto.toJson();
              await actualRideRef.set({...json, 'rider_id': ride.rider.uid.getOrCrash()});
              return right(unit);
            } catch (e) {
              return left(RideFailure.serverError());
            }
          },
          (a) => right(unit),
        );
      },
    );
  }

  @override
  Future<Either<RideFailure, Unit>> cancelRideRequest(RideRequest ride) async {
    DatabaseReference ridesRef = _firebaseDatabase.ref('rides');
    try {
      await ridesRef.child(ride.rideId.getOrCrash()).remove();
      // final snapshot = await ridesRef
      //     .orderByChild('rider_id')
      //     .equalTo(ride.rider.uid.getOrCrash())
      //     .limitToFirst(1)
      //     .get();
      // if (snapshot.value == null) return right(unit);
      // Map<String, dynamic> jsonVal = jsonDecode(jsonEncode(snapshot.value));
      // await ridesRef.child(jsonVal.keys.toList()[0]).remove();
      return right(unit);
    } catch (e) {
      return left(RideFailure.serverError());
    }
  }

  @override
  Stream<Either<RideFailure, Option<RideRequest>>> getExistingRideRequest(UserEntity user) {
    DatabaseReference ridesRef = _firebaseDatabase.ref('rides');
    print(user.uid.getOrCrash());
    return ridesRef
        .orderByChild('rider_id')
        .equalTo(user.uid.getOrCrash())
        .limitToFirst(1)
        .onValue
        .map((dbEvent) {
      print('stream');
      DataSnapshot snapshot = dbEvent.snapshot;
      if (snapshot.value == null) return right(none());
      Map<String, dynamic> jsonVal = jsonDecode(jsonEncode(snapshot.value));
      print(jsonVal);
      RideRequesDto rideRequesDto = RideRequesDto.fromJson(jsonVal[jsonVal.keys.toList()[0]]);
      print(rideRequesDto);
      RideRequest rideRequest = rideRequesDto.copyWith(rideId: jsonVal.keys.toList()[0]).toDomain();
      return rideRequest.driverId.value
          .fold((f) => right(some(rideRequest)), (rideRequestvalue) => right(none()));
    });
  }
}
