import 'package:get/get.dart';
import 'package:location/location.dart';
import 'package:restaurants/models/address.dart';
import 'package:restaurants/screens/location-permission-denied.dart';
import 'package:restaurants/screens/restauran-list.dart';
import 'package:restaurants/utilities/constants.dart';
import 'package:restaurants/utilities/end-points.dart';
import 'package:restaurants/utilities/request.dart';

class LocationController extends GetxController {
  Location location = Location();
  LocationController();

  checkLocationService() async {
    bool _serviceEnabled;
    _serviceEnabled = await location.serviceEnabled();
    if (!_serviceEnabled) {
      _serviceEnabled = await location.requestService();
      if (!_serviceEnabled) {
        // redirect to denied location permission screen
        Get.off(LocationPermissionDeniedPage());
      } else {
        checkLocationPermission();
      }
    } else {
      checkLocationPermission();
    }
  }

  checkLocationPermission() async {
    PermissionStatus _permissionGranted;
    _permissionGranted = await location.hasPermission();
    if (_permissionGranted == PermissionStatus.denied) {
      _permissionGranted = await location.requestPermission();
      if (_permissionGranted != PermissionStatus.granted) {
        // redirect to denied location permission screen
        Get.off(LocationPermissionDeniedPage());
      } else {
        Constants.locationData = await location.getLocation();
        // redirect to home screen
        fetchAddressInfoFromLatLng();
      }
    } else {
      // redirect to home screen
      fetchAddressInfoFromLatLng();
    }
  }

  fetchAddressInfoFromLatLng() async {
    try {
      Constants.circularDialog();
      Constants.locationData = await location.getLocation();
      var response = await Constants.request.send(
        ConnectionType.GET,
        EndPoints.getFormatedAddress +
            '?StrLocLatitude=${Constants.locationData.latitude}&StrLocLongitude=${Constants.locationData.longitude}',
      );
      Get.back();
      if (response != null) {
        Constants.formatedAddress = Address.fromJson(response);
        Get.until((route) => route.isFirst);
        Get.off(() => RestuarantList());
      }
    } catch (e) {
      Get.back();
    }
  }
}
