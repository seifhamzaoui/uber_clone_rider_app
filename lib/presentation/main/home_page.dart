// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:uber_clone/application/location/get_location/get_location_bloc.dart';
import 'package:uber_clone/application/location/map_controller/map_controller_bloc.dart';
import 'package:uber_clone/application/location/search_destination/search_destination_bloc.dart';
import 'dart:async';

import 'package:uber_clone/injectable.dart';
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
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<GetLocationBloc>(
            create: (context) => getIt<GetLocationBloc>()..add(GetLocationEvent.started())),
        BlocProvider<MapControllerBloc>(create: (context) => getIt<MapControllerBloc>()),
        BlocProvider<SearchDestinationBloc>(create: (context) => getIt<SearchDestinationBloc>()),
      ],
      child: Scaffold(
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
                Positioned(
                    top: 0,
                    child: SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: MediaQuery.of(context).size.height,
                      child: GoogleMap(
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
                DraggableScrollableSheet(
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
                                      showLocationDialog(
                                          'Please wait until position fetched.', context);
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
                ),
                PositionnedButton(
                  icon: Icons.menu,
                  onPressed: () {},
                  left: 20,
                  top: 20,
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
                    print(state.polyline.fold(() => 'empty', (a) => "has value"));
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
