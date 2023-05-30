import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_example/core/api/api_call.dart';
import 'package:flutter_example/core/utils/common_utils.dart';
import 'package:flutter_example/features/login/data/models/sign_in_model.dart';
import 'package:flutter_example/features/login/data/models/sign_in_response.dart';






class SignInViewModel extends ChangeNotifier {

  late SignInResponse _signInResponse;

  SignInResponse get signInResponse => _signInResponse;

  bool loading= false;
  bool isBack= false;
  bool failed= false;


  Future<void> signIn(SignInBody body) async {
        loading=true;
        notifyListeners();

        APICall().signIn(body).then((response) {
          _signInResponse =
              SignInResponse.fromJson(json.decode(response.body));
          if (_signInResponse.status == true) {
            isBack = true;
            notifyListeners();
          }else{
            CommonUtil().showToast(_signInResponse.message ?? '');
          }
        });
      loading = false;
      notifyListeners();

  }
}
