
import 'dart:convert';


import 'package:flutter_example/app_constants.dart';
import 'package:flutter_example/features/login/data/models/sign_in_model.dart';
import 'package:http/http.dart' as http;

class APICall {
  Future<http.Response> signIn(SignInBody body) async {
    Map<String, String> headers = {'Content-Type': 'application/json'};
    return await http.post(
        Uri.parse(AppConstants.signIn),
        body: jsonEncode(body.toJson()),
        headers: headers);
  }

  Future<http.Response> getMessagesList() async {
    Map<String, String> headers = {'Content-Type': 'application/json'};
    return await http.get(
        Uri.parse(AppConstants.messages),
        headers: headers);
  }


}