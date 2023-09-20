import 'package:geolocator/geolocator.dart';

class LocationService {
  late double latitude;
  late double longitude;

  Future<void> getCurrentLocation() async  {
    LocationPermission permission = await Geolocator.checkPermission(); // expression
    if (permission == LocationPermission.denied) {
      Geolocator.requestPermission();
    } else {
      Position position = await Geolocator.getCurrentPosition(); // IO
      latitude = position.latitude;
      longitude = position.longitude;

    }
  }
}