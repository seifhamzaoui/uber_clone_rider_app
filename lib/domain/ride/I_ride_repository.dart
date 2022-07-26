import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:uber_clone/domain/auth/user_entity.dart';
import 'package:uber_clone/domain/ride/entities.dart';
import 'package:uber_clone/domain/ride/failures.dart';

abstract class IRideRepository {
  Future<Either<RideFailure, Unit>> createRideRequest(RideRequest ride);
  Stream<Either<RideFailure, Option<RideRequest>>> getExistingRideRequest(UserEntity user);
  Future<Either<RideFailure, Unit>> cancelRideRequest(RideRequest ride);
}
