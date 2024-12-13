import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class LocationScreen extends StatelessWidget {
  const LocationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final memberName = ModalRoute.of(context)?.settings.arguments as String;

    final List<LatLng> routePoints = [
      const LatLng(37.7749, -122.4194), // Start
      const LatLng(37.8044, -122.2711), // End
    ];

    return Scaffold(
      appBar: AppBar(title: Text("$memberName's Location")),
      body: GoogleMap(
        initialCameraPosition: const CameraPosition(
          target: LatLng(37.7749, -122.4194),
          zoom: 12,
        ),
        polylines: {
          Polyline(
            polylineId: const PolylineId('route'),
            points: routePoints,
            color: Colors.blue,
            width: 5,
          ),
        },
        markers: {
          Marker(
            markerId: const MarkerId('start'),
            position: routePoints[0],
            infoWindow: const InfoWindow(title: 'Start Point'),
          ),
          Marker(
            markerId: const MarkerId('stop'),
            position: routePoints[1],
            infoWindow: const InfoWindow(title: 'Stop Point'),
          ),
        },
      ),
    );
  }
}
