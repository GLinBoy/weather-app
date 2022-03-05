import 'weather_data_temp.dart';
import 'weather_feels_like.dart';
import 'weather_data_info.dart';

class WeatherData {
  WeatherData({
    this.dt,
    this.sunrise,
    this.sunset,
    this.temp,
    this.feelsLike,
    this.pressure,
    this.humidity,
    this.weather,
    this.speed,
    this.deg,
    this.gust,
    this.clouds,
    this.pop,
    this.rain,
  });

  int? dt;
  int? sunrise;
  int? sunset;
  WeatherDataTemp? temp;
  WeatherFeelsLike? feelsLike;
  int? pressure;
  int? humidity;
  List<WeatherDataInfo>? weather;
  double? speed;
  int? deg;
  double? gust;
  int? clouds;
  double? pop;
  double? rain;

  factory WeatherData.fromJson(Map<String, dynamic> json) => WeatherData(
        dt: json["dt"],
        sunrise: json["sunrise"],
        sunset: json["sunset"],
        temp: json["temp"] == null
            ? null
            : WeatherDataTemp.fromJson(json["temp"]),
        feelsLike: json["feels_like"] == null
            ? null
            : WeatherFeelsLike.fromJson(json["feels_like"]),
        pressure: json["pressure"],
        humidity: json["humidity"],
        weather: json["weather"] == null
            ? null
            : List<WeatherDataInfo>.from(
                json["weather"].map((x) => WeatherDataInfo.fromJson(x))),
        speed: json["speed"],
        deg: json["deg"],
        gust: json["gust"],
        clouds: json["clouds"],
        pop: json["pop"],
        rain: json["rain"],
      );

  Map<String, dynamic> toJson() => {
        "dt": dt,
        "sunrise": sunrise,
        "sunset": sunset,
        "temp": temp?.toJson(),
        "feels_like": feelsLike?.toJson(),
        "pressure": pressure,
        "humidity": humidity,
        "weather": weather == null
            ? null
            : List<dynamic>.from(
                weather!.whereType<WeatherDataInfo>().map((x) => x.toJson())),
        "speed": speed,
        "deg": deg,
        "gust": gust,
        "clouds": clouds,
        "pop": pop,
        "rain": rain,
      };
}
