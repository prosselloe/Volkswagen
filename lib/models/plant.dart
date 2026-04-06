class Plant {
  final int id;
  final String name;
  final String flag;
  final double latitude;
  final double longitude;

  Plant({
    required this.id,
    required this.name,
    required this.flag,
    required this.latitude,
    required this.longitude,
  });

  factory Plant.fromJson(Map<String, dynamic> json) {
    return Plant(
      id: json['id'],
      name: json['name'],
      flag: json['flag'],
      latitude: json['coordinates']['latitude'],
      longitude: json['coordinates']['longitude'],
    );
  }
}
