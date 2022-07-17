import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geolocator/geolocator.dart';
import 'package:injectable/injectable.dart';

part 'get_location_event.dart';
part 'get_location_state.dart';
part 'get_location_bloc.freezed.dart';

@Injectable()
class GetLocationBloc extends Bloc<GetLocationEvent, GetLocationState> {
  GetLocationBloc() : super(_Initial()) {
    on<GetLocationEvent>((event, emit) async {
      await event.map(
        started: (e) async {
          bool serviceEnabled;
          LocationPermission permission;
          emit(GetLocationState.loading());
          // Test if location services are enabled.
          serviceEnabled = await Geolocator.isLocationServiceEnabled();
          if (!serviceEnabled) {
            Position? position = await Geolocator.getLastKnownPosition();
            if (position != null)
              emit(GetLocationState.positionlocated(position));
            else
              emit(GetLocationState.locationServiceDisabled());
            return 0;
          }

          permission = await Geolocator.checkPermission();
          if (permission == LocationPermission.denied) {
            permission = await Geolocator.requestPermission();
            if (permission == LocationPermission.denied) {
              emit(GetLocationState.locationPermissionDenied());
              return 0;
            }
          }

          if (permission == LocationPermission.deniedForever) {
            // Permissions are denied forever, handle appropriately.
            emit(GetLocationState.locationPermissionDenied());
            return 0;
          }
          // When we reach here, permissions are granted and we can
          // continue accessing the position of the device.
          Position position = await Geolocator.getCurrentPosition(
            desiredAccuracy: LocationAccuracy.bestForNavigation,
          );
          emit(GetLocationState.positionlocated(position));
        },
      );
    });
  }
}
