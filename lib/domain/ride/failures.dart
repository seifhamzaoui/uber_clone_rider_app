import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
abstract class RideFailure with _$RideFailure {
  const factory RideFailure.serverError() = _ServerError;
}
