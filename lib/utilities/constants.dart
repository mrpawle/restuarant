import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:location/location.dart';
import 'package:restaurants/models/address.dart';
import 'package:restaurants/utilities/request.dart';

class Constants {
  static final pageSize = 10;
  static Address? formatedAddress;
  static String baseUrl = 'http://fmtest.dishco.com/shawmanservices/api/';
  static String listEndMessage = 'It looks like you\'ve reached the end';
  static String appVersion = '1.0.0';
  static int pageLimite = 10;
  static Request request = Request.singleInstance;
  static double defaultLatitude = 19.1105765;
  static double defaultLongitude = 73.0174654;
  static LocationData locationData = LocationData.fromMap(
      {'latitude': defaultLatitude, 'longitude': defaultLongitude});
  static Size deviceSize = Get.mediaQuery.size;
  static Color shimmerBaseColor = Colors.grey[200]!;
  static Color shimmerHighlightColor = Colors.grey[350]!;

  static circularDialog() {
    return Get.dialog(
      WillPopScope(
        onWillPop: () {
          return Future.value(false);
        },
        child: AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(32.0),
            ),
          ),
          title: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
                Container(
                  child: CircularProgressIndicator(),
                ),
                Container(
                  margin: EdgeInsets.only(top: 20.0, bottom: 10.0),
                  child: Text(
                    '  Loading...',
                    style: TextStyle(
                        fontWeight: FontWeight.w300, color: Colors.black45),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      barrierDismissible: false,
    );
  }

  static getDistance(double distance) {
    if (distance == null) {
      return distance.toString();
    }
    if (distance > (1000 * 100)) {
      // > 10 km
      return (distance / 1000).toStringAsFixed(2) + ' km';
    } else if (distance > 1000) {
      // 1 km
      return (distance / 1000).toStringAsFixed(2) + ' km';
    }
    return distance.toStringAsFixed(0) + 'm';
  }

  static String moneyFormatter(dynamic value) {
    if (value == '' || value == null) return '';
    double money = double.parse(value.toString());
    return NumberFormat.simpleCurrency(
            locale: 'hi', name: 'INR', decimalDigits: 0)
        .format(money);
  }
}
