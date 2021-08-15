import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/controllers/location-controller.dart';
import 'package:restaurants/utilities/constants.dart';

class LocationPermissionPage extends StatelessWidget {
  final LocationController controller = Get.put(LocationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder<LocationController>(
        builder: (controller) => Container(
          height: Constants.deviceSize.height,
          width: Constants.deviceSize.width,
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Location Permission',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'We need to use your location service to accurately display restuarants nearest you.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 20),
                MaterialButton(
                  onPressed: controller.checkLocationService,
                  color: Colors.green,
                  child: Text(
                    'Allow',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
