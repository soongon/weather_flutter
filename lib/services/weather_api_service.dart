import 'dart:convert';
import 'package:http/http.dart' as http;

class WeatherApiService {
  static Future<dynamic> getWeatherWithLocation(
      {required double latitude, required double longitude}) async {
    Uri uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'lat': latitude.toString(),
      'lon': longitude.toString(),
      'appid': '',
      'units': 'metric',
    });
    http.Response response = await http.get(uri);
    dynamic weatherJson = jsonDecode(response.body);
    return weatherJson;
  }
}