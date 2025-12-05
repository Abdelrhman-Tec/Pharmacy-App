import 'package:geolocator/geolocator.dart';

class GetLocationService {
  Future<Position> getCurrentLocation() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Check service
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      throw Exception('GPS is disabled');
    }

    // Check permissions
    permission = await Geolocator.checkPermission();
    if (permission == .denied) {
      permission = await Geolocator.requestPermission();
      if (permission == .denied) {
        throw Exception('Permission denied');
      }
    }

    if (permission == .deniedForever) {
      throw Exception('Permission denied forever');
    }

    // Get location
    return await Geolocator.getCurrentPosition(
      locationSettings: LocationSettings(accuracy: .high),
    );
  }
}
