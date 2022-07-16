import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_failure.freezed.dart';

@freezed
abstract class LocationFailure with _$LocationFailure {
  const factory LocationFailure.notFound() = _NotFound;
  const factory LocationFailure.serverError() = _ServerError;
}
