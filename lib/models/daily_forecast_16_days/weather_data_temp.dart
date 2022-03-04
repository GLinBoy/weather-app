class WeatherDataTemp {
  WeatherDataTemp({
    this.day,
    this.min,
    this.max,
    this.night,
    this.eve,
    this.morn,
  });

  double? day;
  double? min;
  double? max;
  double? night;
  double? eve;
  double? morn;

  factory WeatherDataTemp.fromJson(Map<String, dynamic> json) =>
      WeatherDataTemp(
        day: json["day"],
        min: json["min"],
        max: json["max"],
        night: json["night"],
        eve: json["eve"],
        morn: json["morn"],
      );

  Map<String, dynamic> toJson() => {
        "day": day,
        "min": min,
        "max": max,
        "night": night,
        "eve": eve,
        "morn": morn,
      };
}
