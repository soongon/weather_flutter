
class Weather {
  double temperature;
  String description;
  String cityName;

  Weather({
    required this.temperature,
    required this.description,
    required this.cityName,
  });

  Weather.fromJson(Map<String, dynamic> json)
      : temperature = json['main']['temp'],
        description = json['weather'][0]['main'],
        cityName = json['name'];

  @override
  String toString() {
    return 'Weather{temperature: $temperature, description: $description, cityName: $cityName}';
  }
}