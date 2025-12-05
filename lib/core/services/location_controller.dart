import 'package:flutter/material.dart';
import 'package:geocoding/geocoding.dart';
import 'package:pharmacy_app/core/services/get_location_service.dart';

class LocationController {
  final ValueNotifier<String> location = ValueNotifier("جاري تحديد الموقع...");

  final GetLocationService _locationService = GetLocationService();
  Future<void> getLocation() async {
    try {
      final position = await _locationService.getCurrentLocation();
      final placemarks = await placemarkFromCoordinates(
        position.latitude,
        position.longitude,
      );

      if (placemarks.isNotEmpty) {
        final placemark = placemarks.first;
        final city = placemark.locality ?? '';
        final country = placemark.country ?? '';
        location.value = '$city, $country';
      } else {
        location.value = 'الموقع غير متوفر';
      }
    } catch (e) {
      location.value = 'تعذر الحصول على الموقع';
    }
  }
}
