import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:restaurants/models/restuarant.dart';
import 'package:restaurants/utilities/constants.dart';
import 'package:restaurants/utilities/end-points.dart';
import 'package:restaurants/utilities/request.dart';

class RestuarantController extends GetxController {
  List<Restuarant> restuarantList = <Restuarant>[];
  Restuarant? restuarantInfo;
  ScrollController controller = ScrollController();
  int noOfRestaurants = 0;
  bool isLoading = true;
  bool isPaginating = false;

  void onInit() {
    if (restuarantList.isEmpty) {
      fetchRestuarants();
    }
    super.onInit();
  }

  fetchRestuarants() async {
    try {
      if (isPaginating) return;
      if (!isPaginating) {
        isPaginating = true;
      }
      var response = await Constants.request.send(
        ConnectionType.GET,
        EndPoints.restaurantDetailsByFilter +
            '?StrLocLatitude=${Constants.locationData.latitude}&StrLocLongitude=${Constants.locationData.longitude}&StrLocCityName=${Constants.formatedAddress!.cityName}&IntLocOrderby=1&IntLocNoOfRecords=0',
      );
      Get.back();
      if (response != null) {
        if (response['AllRestaurantDishes'].length > 0) {
          for (var item in response['AllRestaurantDishes']) {
            restuarantList.add(Restuarant.fromJson(item));
          }
        }
      }
    } catch (e) {
      Get.back();
    } finally {
      isLoading = false;
      isPaginating = false;
      update();
    }
  }

  fetchRestuarantInfo(int restaurantId) async {
    try {
      var response = await Constants.request.send(
        ConnectionType.GET,
        EndPoints.singleRestaurantDetails +
            '?IntLocRestaurantId=$restaurantId&StrLocLatitude=${Constants.locationData.latitude}&StrLocLongitude=${Constants.locationData.longitude}',
      );
      if (response != null) {
        restuarantInfo = Restuarant.fromJson(response);
        update();
      }
    } catch (e) {
      final snackBar =
          SnackBar(content: Text(e.toString().replaceAll("Exception: ", " ")));
      ScaffoldMessenger.of(Get.context!).showSnackBar(snackBar);
    } finally {
      isLoading = false;
      isPaginating = false;
      update();
    }
  }
}
