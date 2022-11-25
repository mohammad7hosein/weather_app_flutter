import 'package:dio/dio.dart';
import 'package:weather_app_flutter/core/utils/constants.dart';

class ApiProvider {
  final Dio _dio = Dio();

  Future<dynamic> callCurrentWeather(cityname) async {
    var response = await _dio.get(
      '${Constants.baseUrl}/data/2.5/weather',
      queryParameters: {
        'q' : cityname,
        'appid' : Constants.apiKey,
        'units' : 'metric'
      }
    );
    return response;
  }

}