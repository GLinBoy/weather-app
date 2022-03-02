class Coordinate {
  double lat;
  double lon;

  Coordinate({
    required this.lat,
    required this.lon,
  });

  factory Coordinate.fromJson(Map<String, dynamic> json) {
    return Coordinate(lat: json['lat'], lon: json['lon']);
  }
}
