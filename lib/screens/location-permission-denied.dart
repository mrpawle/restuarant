import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/controllers/location-controller.dart';
import 'package:restaurants/models/address.dart';
import 'package:restaurants/utilities/constants.dart';
import 'package:restaurants/utilities/end-points.dart';
import 'package:restaurants/utilities/request.dart';

import 'restauran-list.dart';

class LocationPermissionDeniedPage extends StatelessWidget {
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
                  'We regret to say that the locations will not be accurate and the some of the feature will not work',
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
                SizedBox(height: 20),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22.0),
                      side: BorderSide(color: Colors.red)),
                  onPressed: () async {
                    try {
                      Constants.circularDialog();
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
                  },
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
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
