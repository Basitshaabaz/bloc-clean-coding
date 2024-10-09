import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../exception/app_exceptions.dart';
import 'base_api_service.dart';

class NetworkApiService implements BaseApiService {
  @override
  Future getApi(String url) async {
    if (kDebugMode) {
      print(url);
    }

    dynamic responseJson;

    try {
      final response =
          await http.get(Uri.parse(url)).timeout(const Duration(seconds: 20));
      responseJson = returnResponse(response);
    } on SocketException catch (e) {
      throw NoInternetException(e.toString());
    } on TimeoutException {
      throw FetchDataException('Network Request time out');
    }

    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  @override
  Future postApi(String url, dynamic data) async {
    if (kDebugMode) {
      print(url);
      print(data);
    }
    dynamic responseJson;
    try {
      final Response response = await post(Uri.parse(url), body: data)
          .timeout(const Duration(seconds: 10));
      responseJson = returnResponse(response);
    } on SocketException {
      throw NoInternetException('No Internet Connection');
    } on TimeoutException {
      throw FetchDataException('Network Request time out');
    }

    if (kDebugMode) {
      print(responseJson);
    }
    return responseJson;
  }

  dynamic returnResponse(http.Response response) {
    if (kDebugMode) {
      print(response.statusCode);
    }

    if (response.statusCode >= 200 && response.statusCode <= 299) {
      dynamic responseJson = jsonDecode(response.body);
      return responseJson;
    } else if (response.statusCode >= 400 && response.statusCode < 500) {
      if (response.statusCode == 400) {
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      } else if (response.statusCode == 401 || response.statusCode == 403) {
        throw UnauthorisedException(response.body.toString());
      } else if (response.statusCode == 404) {
        throw NotFoundException('Resource not found');
      } else {
        throw BadRequestException('Client error: ${response.statusCode}');
      }
    } else if (response.statusCode >= 500 && response.statusCode < 600) {
      throw ServerException('Server error: ${response.statusCode}');
    } else {
      throw FetchDataException('Unexpected error: ${response.statusCode}');
    }
  }
}
