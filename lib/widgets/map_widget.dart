import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

// For Web platform

class MapWidget extends StatelessWidget {
  const MapWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (kIsWeb) {
      // Web implementation for Google Maps
      return HtmlElementView(viewType: 'google-maps-element');
    } else {
      // Mobile implementation
      return const GoogleMap(
        initialCameraPosition: CameraPosition(
          target: LatLng(37.7749, -122.4194), // San Francisco coordinates
          zoom: 12,
        ),
      );
    }
  }
}
