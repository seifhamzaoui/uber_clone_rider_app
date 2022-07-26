// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/application/location/get_location/get_location_bloc.dart';
import 'package:uber_clone/application/location/map_controller/map_controller_bloc.dart';
import 'package:uber_clone/application/location/search_destination/search_destination_bloc.dart';
import 'package:uber_clone/application/ride/ride/ride_bloc.dart';
import 'package:uber_clone/domain/location/entities.dart';
import 'package:uber_clone/domain/ride/entities.dart';
import 'dart:async';

import 'package:uber_clone/injectable.dart';
import 'package:uber_clone/presentation/core/brand_colors.dart';
import 'package:uber_clone/presentation/main/drawer.dart';
import 'package:uber_clone/presentation/main/search_destination_page.dart';
import 'package:uber_clone/presentation/routes/router.gr.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Set<Polyline> polyLines = {};
  double padding = 0;
  Completer<GoogleMapController> _controller = Completer();
  late GoogleMapController mapController;
  final CameraPosition _kGooglePlex = CameraPosition(
    target: LatLng(37.42796133580664, -122.085749655962),
    zoom: 14.4746,
  );

  showLocationDialog(String text, BuildContext context) {
    showDialog(
        barrierDismissible: false,
        context: context,
        builder: (context) {
          return Dialog(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              height: 80,
              child: Card(
                child: Center(
                    child: Text(
                  text,
                  maxLines: 2,
                )),
              ),
            ),
          );
        });
  }

  @override
  void initState() {
    getIt<RideBloc>()..add(const RideEvent.started()); // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetLocationBloc>(
            create: (context) => getIt<GetLocationBloc>()..add(GetLocationEvent.started())),
        BlocProvider<MapControllerBloc>(create: (context) => getIt<MapControllerBloc>()),
        BlocProvider<SearchDestinationBloc>(create: (context) => getIt<SearchDestinationBloc>()),
        BlocProvider<RideBloc>(
            create: (context) => getIt<RideBloc>()..add(const RideEvent.started())),
      ],
      child: Scaffold(
          drawer: MyDrawer(),
          body: SafeArea(
            child: BlocConsumer<GetLocationBloc, GetLocationState>(
              listener: ((context, state) {
                state.map(
                  initial: (s) {},
                  loading: (s) {
                    showDialog(
                        barrierDismissible: false,
                        context: context,
                        builder: (_) => Center(child: CircularProgressIndicator()));
                  },
                  locationServiceDisabled: (s) {
                    AutoRouter.of(context).popUntilRouteWithName("HomePageRoute");
                    showLocationDialog('please enable location service', context);
                  },
                  locationPermissionDenied: (s) {
                    AutoRouter.of(context).popUntilRouteWithName("HomePageRoute");
                    showLocationDialog(
                      'Location permission is denied please enable location permissions for this app.',
                      context,
                    );
                  },
                  positionlocated: (s) {
                    AutoRouter.of(context).popUntilRouteWithName("HomePageRoute");
                    context
                        .read<MapControllerBloc>()
                        .add(MapControllerEvent.currentPositioninit(s.postion));
                  },
                );
              }),
              builder: (context, state) {
                return Stack(
                  children: [
                    // Map Widget
                    Positioned(
                        top: 0,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.height,
                          child: GoogleMap(
                            markers: context.watch<MapControllerBloc>().state.polyline.fold(
                                () => {},
                                (polyline) => {
                                      Marker(
                                        markerId: MarkerId('pikup'),
                                        position: polyline.points.first,
                                        infoWindow: InfoWindow(snippet: 'my Location'),
                                        icon: BitmapDescriptor.defaultMarkerWithHue(
                                            BitmapDescriptor.hueGreen),
                                      ),
                                      Marker(
                                        markerId: MarkerId('destination'),
                                        position: polyline.points.last,
                                        infoWindow: InfoWindow(snippet: 'destination'),
                                        icon: BitmapDescriptor.defaultMarkerWithHue(
                                            BitmapDescriptor.hueRed),
                                      ),
                                    }),
                            polylines: context
                                .watch<MapControllerBloc>()
                                .state
                                .polyline
                                .fold(() => {}, (a) => {a}),
                            trafficEnabled: true,
                            rotateGesturesEnabled: true,
                            mapToolbarEnabled: true,
                            myLocationButtonEnabled: true,
                            myLocationEnabled: true,
                            zoomControlsEnabled: true,
                            zoomGesturesEnabled: true,
                            padding: EdgeInsets.only(bottom: padding),
                            mapType: MapType.normal,
                            onMapCreated: (controller) {
                              _controller.complete(controller);
                              mapController = controller;
                              context
                                  .read<MapControllerBloc>()
                                  .add(MapControllerEvent.mapCreated(mapcontroller: controller));
                              setState(() {
                                padding = MediaQuery.of(context).size.height / 2.3;
                              });
                            },
                            initialCameraPosition: _kGooglePlex,
                          ),
                        )),
                    context.watch<RideBloc>().state.maybeMap(
                          orElse: () => BotomWelcome(context),
                          isLoading: (s) => Center(child: CircularProgressIndicator()),
                          error: (s) => Center(child: Text('error')),
                          rideWaiting: (s) => RideWaiting(rideRequest: s.ride),
                          noRideExist: (s) => context
                              .watch<MapControllerBloc>()
                              .state
                              .directionDetailsOption
                              .fold(() => BotomWelcome(context), (a) => RideInformations()),
                        ),
                    // context.watch<MapControllerBloc>().state.directionDetailsOption.fold(
                    //       () => BotomWelcome(context),
                    //       (a) => context.watch<RideBloc>().state.maybeMap(
                    //             orElse: () => RideInformations(),
                    //             isLoading: (s) => Center(
                    //               child: CircularProgressIndicator(),
                    //             ),
                    //             noRideExist: (s) => RideInformations(),
                    //             error: (s) => Center(child: Text('error')),
                    //             rideWaiting: (s) => RideWaiting(),
                    //           ),
                    //     ),

                    PositionnedButton(
                      icon: Icons.menu,
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      left: 20,
                      top: 20,
                    ),
                    if (context.watch<MapControllerBloc>().state.directionDetailsOption.isSome() &&
                        context
                            .watch<RideBloc>()
                            .state
                            .maybeMap(orElse: () => true, rideWaiting: (s) => false))
                      PositionnedButton(
                        bottom: 220,
                        right: MediaQuery.of(context).size.width / 2.2,
                        icon: Icons.close,
                        onPressed: () {
                          context.read<MapControllerBloc>().add(MapControllerEvent.reseted());
                        },
                      ),
                    BlocListener<MapControllerBloc, MapControllerState>(
                      listener: (context, state) {
                        context.read<SearchDestinationBloc>().add(SearchDestinationEvent.started(
                              cuurentAdress: state.currentAdress,
                              currentposition: state.currentposition ?? LatLng(0, 0),
                            ));
                        setState(() {
                          polyLines = state.polyline.fold(() => {}, (polyLine) => {polyLine});
                        });
                      },
                      child: Container(),
                    )
                  ],
                );
              },
            ),
          )),
    );
  }

  DraggableScrollableSheet BotomWelcome(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.1,
      initialChildSize: 0.3,
      maxChildSize: 0.35,
      builder: (ctx, c) {
        return SingleChildScrollView(
          controller: c,
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.4),
                    offset: Offset(0, -5),
                    blurRadius: 20,
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
              child: Column(
                children: [
                  const Text(
                    'Nice to see you again',
                    style: TextStyle(fontSize: 13, color: Colors.black),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Where are you going?",
                    style: TextStyle(fontFamily: 'bolt-bold', fontSize: 20),
                  ),
                  const SizedBox(height: 10),
                  GestureDetector(
                    onTap: () {
                      context
                          .read<SearchDestinationBloc>()
                          .state
                          .userAdress
                          .formtatedAdress
                          .value
                          .fold(
                        (l) {
                          showLocationDialog('Please wait until position fetched.', context);
                        },
                        (r) {
                          Navigator.of(context).push(MaterialPageRoute(
                            builder: (_) {
                              return BlocProvider<SearchDestinationBloc>.value(
                                value: BlocProvider.of<SearchDestinationBloc>(ctx),
                                child: SearchDestination(buildcontext: ctx),
                              );
                            },
                          ));
                          // AutoRouter.of(context).push(SearchDestinationRoute());
                        },
                      );
                    },
                    child: Container(
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: const [
                          BoxShadow(
                              color: Colors.black,
                              offset: Offset(-5, -2),
                              blurRadius: 20,
                              spreadRadius: -15),
                        ],
                      ),
                      height: 50,
                      child: Row(
                        children: const <Widget>[
                          Icon(Icons.search, color: Colors.blueAccent),
                          SizedBox(width: 10),
                          Align(
                            alignment: Alignment(-1, -0.5),
                            child: Text(
                              'Search destination',
                              style: TextStyle(fontSize: 15),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  ListTile(
                    leading: Icon(Icons.home_outlined),
                    title: Text('Home'),
                    subtitle: Text(
                      'hamza,Hammam guergour,setif',
                      style: TextStyle(fontSize: 15),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class PositionnedButton extends StatelessWidget {
  PositionnedButton({
    Key? key,
    this.left,
    this.right,
    this.top,
    this.bottom,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);
  final double? left;
  final double? right;
  final double? top;
  final double? bottom;
  void Function()? onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
      child: Container(
        height: 40,
        width: 40,
        child: IconButton(
          onPressed: onPressed,
          icon: Icon(icon),
        ),
        decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.5),
                offset: Offset(0, 2),
                blurRadius: 10,
              ),
            ],
            borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}

class RideInformations extends StatelessWidget {
  const RideInformations({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MapControllerState state = context.watch<MapControllerBloc>().state;
    DirectionDetails? directionDetails = state.directionDetailsOption.fold(() => null, (a) => a);

    return DraggableScrollableSheet(
      minChildSize: 0.1,
      initialChildSize: 0.2,
      maxChildSize: 0.30,
      builder: (ctx, c) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0.7, 0.7), blurRadius: 20, spreadRadius: 0.5),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            controller: c,
            child: Column(
              children: [
                Row(
                  children: [
                    Container(height: 75, width: 75, child: Image.asset('images/taxi.png')),
                    SizedBox(width: 10),
                    Column(
                      children: [
                        Text('Taxi', style: TextStyle(fontSize: 20, fontFamily: 'bolt-bold')),
                        Text('${directionDetails?.distanceKm} km',
                            style: TextStyle(fontSize: 15, color: Colors.grey)),
                      ],
                    ),
                    Spacer(),
                    Text('${directionDetails?.price.round()} DA',
                        style: TextStyle(fontSize: 20, fontFamily: 'bolt-bold')),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.money),
                    SizedBox(
                      width: 10,
                    ),
                    Text('Cash', style: TextStyle(fontSize: 15, fontFamily: 'bolt-regular')),
                    Icon(Icons.keyboard_arrow_down),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      context.read<RideBloc>().add(
                            RideEvent.requested(
                              origin: directionDetails!.origin,
                              destination: directionDetails.destination,
                              price: directionDetails.price,
                            ),
                          );
                    },
                    child: const Text('Request CAP',
                        style: const TextStyle(fontSize: 20, fontFamily: 'bolt-regular')),
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(BrandColors.colorGreen),
                        minimumSize: MaterialStateProperty.all(Size(double.infinity, 50))),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class RideWaiting extends StatelessWidget {
  const RideWaiting({required this.rideRequest, Key? key}) : super(key: key);
  final RideRequest rideRequest;
  @override
  Widget build(BuildContext context) {
    return DraggableScrollableSheet(
      minChildSize: 0.1,
      initialChildSize: 0.30,
      maxChildSize: 0.30,
      builder: (ctx, c) {
        return Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.black, offset: Offset(0.7, 0.7), blurRadius: 20, spreadRadius: 0.5),
            ],
          ),
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          child: SingleChildScrollView(
            controller: c,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                LinearProgressIndicator(),
                SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 100,
                  width: 80,
                  child: IconButton(
                    icon: Icon(
                      Icons.cancel_outlined,
                      color: Colors.grey,
                      size: 80,
                    ),
                    onPressed: () {
                      context.read<RideBloc>().add(RideEvent.requestCanceled(rideRequest));
                    },
                  ),
                ),
                Text(
                  'cancel the request',
                  style: TextStyle(fontFamily: 'bolt-bold', fontSize: 20),
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
