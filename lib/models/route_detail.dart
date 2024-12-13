// File: lib/models/route_detail.dart

class RouteDetail {
  final String startLocation;
  final String stopLocation;
  final double totalKm;
  final Duration totalDuration;

  RouteDetail({
    required this.startLocation,
    required this.stopLocation,
    required this.totalKm,
    required this.totalDuration,
  });
}

