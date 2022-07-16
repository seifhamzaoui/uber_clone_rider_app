// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:injectable/injectable.dart';

import 'package:uber_clone/infrastructure/location/adress_dto.dart';

@Injectable()
class LocationFromGeoCoding {
  static String? _apiKey = dotenv.env['MAPS_API_KEY'];
  String _currentAdressUrl(LatLng position) {
    return "https://maps.googleapis.com/maps/api/geocode/json?latlng=${position.latitude},${position.longitude}&key=$_apiKey";
  }

  Dio _dio;
  LocationFromGeoCoding(
    this._dio,
  );

  Future<AdressDto> getCurrentAdress(LatLng position) async {
    String url = _currentAdressUrl(position);
    print('latidtude is');
    print(position.latitude);
    print('longitude is');
    print(position.longitude);
    final response = await _dio.get(url);
    if (response.statusCode == 200) {
      final jsonString = jsonEncode(response.data);
      final jsonMap = jsonDecode(jsonString);
      AdressDto adressDto = AdressDto.fromJson(jsonMap['results'][0]);
      print(adressDto);
      return adressDto;
    } else {
      throw HttpException('server error');
    }
  }
}
