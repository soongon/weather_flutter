import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_flutter/services/location_service.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  LocationService service = LocationService();

  @override
  void initState() {
    super.initState();
    print('init state invoked..');
    _initProcess();
  }

  void _initProcess() async {
    // 현재 위치(좌표)를 확보하고..
    await service.getCurrentLocation();
    print(service.latitude);
    // 좌표를 가지고 날씨 API 콜한다.
    getWeatherWithLocation(
        latitude: service.latitude,
        longitude: service.longitude,
    );
  }

  void getWeatherWithLocation(
      {required double latitude, required double longitude}) async {
    Uri uri = Uri.https('api.openweathermap.org', '/data/2.5/weather', {
      'lat': latitude.toString(),
      'lon': longitude.toString(),
      'appid': '5df3f1b99c9227bb6bb15d61c2b5bf9b',
      'units': 'metric',
    });
    http.Response response = await http.get(uri);
    print(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          '그냥 텍스트',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
