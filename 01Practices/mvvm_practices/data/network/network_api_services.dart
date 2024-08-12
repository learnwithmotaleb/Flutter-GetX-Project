import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/data/app_exceptions.dart';
import 'package:getxfluttertutorial/01Practices/mvvm_practices/data/network/base_api_services.dart';
import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {




  @override
  Future<dynamic> getApi(String url) async {

    if(kDebugMode){
      print(url);
    }

    dynamic responseJson;

    try {
      final response =  await http.get(Uri.parse(url)).timeout(const Duration(seconds: 30));
      responseJson = returnResponse(response);
    } on SocketException {
      InternetException("No Internet Connection.");
    } on RequestTimeOut {
      RequestTimeOut("TimeOut Exception");
    }
    return responseJson;
  }

  @override
  Future<dynamic> postApi(var data, String url) async {
    if(kDebugMode){
      print(url);
      print(data);
    }
    dynamic responseJson;

    try {

      final response =  await http.post(
          Uri.parse(url),
        body: jsonEncode(data),
        headers: {
          "Content-Type": "application/json"
          // "token": "token if here"
        }

      ).timeout(const Duration(seconds: 30));
      responseJson = returnResponse(response);
    } on SocketException {
      InternetException("No Internet Connection.");
    } on RequestTimeOut {
      RequestTimeOut("TimeOut Exception");
    }
    print(responseJson.toString());
    return responseJson;

  }
  
  dynamic returnResponse(http.Response response){

    switch(response.statusCode){
      case 200:
        dynamic responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:
        throw InvalidUrlException("Url not found");
      default:
        throw FetchDataException("Error accorded while communication with server code: ${response.statusCode}");

    }

  }


}
