import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';

class WeatherApiClient {
  Future<Weather>? getCurrentWeather(String? location) async {
    var endpoint = Uri.parse(
        "https://api.openweathermap.org/data/2.5/weather?q=$location&appid=7a94e08da42a15b87f610566959b1e98&units=metric");

    
    var response = await http.get(endpoint);
    print(response.body);
    var body = jsonDecode(response.body);
    print(Weather.fromJson(body));
    return Weather.fromJson(body);
  }
}
