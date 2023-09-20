
class Weather {
  String temperature;
  String description;
  String cityName;

  Weather({
    required this.temperature,
    required this.description,
    required this.cityName,
  });

  @override
  String toString() {
    return 'Weather{temperature: $temperature, description: $description, cityName: $cityName}';
  }
}