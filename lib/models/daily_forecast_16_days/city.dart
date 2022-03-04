import 'coordinate.dart';

import '../../util/json_util.dart';

class City {
  int? id;
  String? name;
  Coordinate? coord;
  String? country;
  int? population;
  int? timezone;

  City({
    this.id,
    this.name,
    this.coord,
    this.country,
    this.population,
    this.timezone,
  });

  factory City.fromJson(Map<String, dynamic> json) {
    return City(
      id: json['id'],
      name: json['name'],
      coord: convertJson(json['coord'], Coordinate.fromJson),
      country: json['country'],
      population: json['population'],
      timezone: json['timezone'],
    );
  }
}
