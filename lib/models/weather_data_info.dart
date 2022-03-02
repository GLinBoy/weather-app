class WeatherDataInfo {
  int? id;
  String? main;
  String? description;
  String? icon;

  WeatherDataInfo({
    this.id,
    this.main,
    this.description,
    this.icon,
  });

  factory WeatherDataInfo.fromJson(Map<String, dynamic> json) {
    return WeatherDataInfo(
      id: json['id'],
      main: json['main'],
      description: json['description'],
      icon: json['icon'],
    );
  }
}
