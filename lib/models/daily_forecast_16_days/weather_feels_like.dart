class WeatherFeelsLike {
  WeatherFeelsLike({
    this.day,
    this.night,
    this.eve,
    this.morn,
  });

  double? day;
  double? night;
  double? eve;
  double? morn;

  factory WeatherFeelsLike.fromJson(Map<String, dynamic> json) =>
      WeatherFeelsLike(
        day: json["day"],
        night: json["night"],
        eve: json["eve"],
        morn: json["morn"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "night": night,
        "eve": eve,
        "morn": morn,
      };
}
