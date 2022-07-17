import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:uber_clone/application/location/map_controller/map_controller_bloc.dart';
import 'package:uber_clone/application/location/search_destination/search_destination_bloc.dart';
import 'package:uber_clone/domain/location/entities.dart';
import 'package:uber_clone/injectable.dart';
import 'package:uber_clone/presentation/core/brand_colors.dart';

class SearchDestination extends StatelessWidget {
  SearchDestination({Key? key}) : super(key: key);
  TextEditingController textEditingController1 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    textEditingController1.text = context
        .watch<SearchDestinationBloc>()
        .state
        .userAdress
        .formtatedAdress
        .value
        .fold((l) => 'we are fetching...', (r) => r);

    return BlocConsumer<SearchDestinationBloc, SearchDestinationState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          backgroundColor: Colors.white,
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                )),
            centerTitle: true,
            title: Text(
              'search',
              style: TextStyle(
                color: Colors.black,
                fontFamily: 'bolt-bold',
              ),
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/pickicon.png',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: BrandColors.colorLightGrayFair,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: TextField(
                                  controller: textEditingController1,
                                  readOnly: true,
                                  decoration: InputDecoration(
                                    fillColor: BrandColors.colorLightGrayFair,
                                    filled: true,
                                    border: InputBorder.none,
                                    hintText: 'pickup  location',
                                    hintStyle: TextStyle(
                                      fontFamily: 'bolt-bold',
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Image.asset(
                            'images/desticon.png',
                            height: 20,
                            width: 20,
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: Container(
                              decoration: BoxDecoration(
                                  color: BrandColors.colorLightGrayFair,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: TextFormField(
                                  initialValue: '',
                                  style: TextStyle(
                                    fontSize: 20,
                                  ),
                                  decoration: InputDecoration(
                                    fillColor: BrandColors.colorLightGrayFair,
                                    filled: true,
                                    border: InputBorder.none,
                                    hintText: 'Enter your  location',
                                    hintStyle: TextStyle(
                                      fontFamily: 'bolt-bold',
                                      fontSize: 20,
                                    ),
                                  ),
                                  onChanged: (value) {
                                    BlocProvider.of<SearchDestinationBloc>(context)
                                        .add(SearchDestinationEvent.search(input: value));
                                  },
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: state.failureOption.isSome()
                    ? Center(child: Text('error'))
                    : state.searchAdresses.fold(() => true, (a) => a.isEmpty)
                        ? Container()
                        : state.isloading
                            ? MyShimmer()
                            : SearchAdressesList(),
              )
            ],
          ),
        );
      },
    );
  }
}

class MyShimmer extends StatelessWidget {
  const MyShimmer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
      baseColor: BrandColors.colorLightGray,
      highlightColor: Colors.white,
      child: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    color: Colors.grey[300],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 300,
                        height: 15,
                        color: Colors.grey[300],
                      ),
                      SizedBox(height: 5),
                      Container(
                        width: 100,
                        height: 10,
                        color: Colors.grey[300],
                      )
                    ],
                  )
                ],
              ),
            );
          }),
    );
  }
}

class SearchAdressesList extends StatelessWidget {
  const SearchAdressesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearchDestinationState state = BlocProvider.of<SearchDestinationBloc>(context).state;
    return ListView.builder(
        itemCount: state.searchAdresses.fold(() => 0, (a) => a.length),
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  width: 50,
                  height: 50,
                  child: Center(
                      child: Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  )),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 300,
                      height: 20,
                      child: Text(state.searchAdresses.fold(() => '', (a) => a[index].mainText)),
                    ),
                    SizedBox(height: 5),
                    Container(
                      width: 100,
                      height: 20,
                      child: Text(
                        state.searchAdresses.fold(() => '', (a) => a[index].secondText),
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          );
        });
  }
}
