import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';

import 'constants.dart';

enum ConnectionType { POST, GET, PATCH, DELETE }

class Request {
  Map<String, String> headers = {};
  Dio dio = Dio();
  static Request singleInstance = Request();
  static Request getSingleton() {
    if (singleInstance == null) {
      singleInstance = Request();
    }
    return singleInstance;
  }

  // constructor
  Request();

  Future send(ConnectionType connectionType, String endPoint,
      {Map<String, dynamic>? body}) async {
    try {
      final result = await InternetAddress.lookup('google.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        await addHeaders();
        Options options = Options(
          headers: headers,
          sendTimeout: 100000,
          receiveTimeout: 100000,
        );
        Uri fullURL = Uri.parse(Constants.baseUrl + endPoint);
        Response? response;
        switch (connectionType) {
          case ConnectionType.GET:
            response = await dio.getUri(fullURL, options: options);
            break;
          case ConnectionType.POST:
            response = await dio.postUri(
              fullURL,
              options: options,
              data: body,
            );
            break;
          case ConnectionType.PATCH:
            response = await dio.patchUri(
              fullURL,
              options: options,
              data: body,
            );
            break;
          case ConnectionType.DELETE:
            response = await dio.deleteUri(
              fullURL,
              options: options,
              data: body,
            );
            break;
        }
        int statusCode = 200;
        var errorMessage = 'Something went wrong !';
        // check if error message exist
        if (statusCode < 200 || statusCode > 399) {
          errorMessage = response.data['message'];
        }
        // check unauthorize access
        if (statusCode == 401) {
          // Do something here - e.g log out user with error message
        }
        // check forbidden access
        if (statusCode == 403) {
          // Do something here
        }
        //other error code
        if (statusCode < 200 || statusCode > 399) {
          return throw Exception(errorMessage);
        }
        // success
        if (response.data is bool) {
          return {'flash': response.data};
        }
        return response.data;
      } else {
        return throw Exception(
            'Seems like your internet is not working, please check your connection and try again');
      }
    } on SocketException catch (_) {
      return throw Exception(
          'Seems like your internet is not working, please check your connection and try again');
    } on TimeoutException catch (error) {
      return throw Exception('Connection Timeout! Try again later');
    } catch (error) {
      return throw Exception((error as DioError).response!.statusMessage);
    }
  }

  addHeaders() {
    scheduleMicrotask(() {
      headers.addAll({
        'AndroidPhone':
            'EV6FTlgBhOalM+qjJpr2OZpAEpPkYJHC5I1aOWyeLevwSIpuzyKEAg=='
      });
    });
  }
}
