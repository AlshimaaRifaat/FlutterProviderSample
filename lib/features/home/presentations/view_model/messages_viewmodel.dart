import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_example/core/api/api_call.dart';
import 'package:flutter_example/core/utils/common_utils.dart';
import 'package:flutter_example/features/home/data/models/enum.dart';
import 'package:flutter_example/features/home/data/models/message_response.dart';


class MessagesViewModel extends ChangeNotifier {
  late List<MessageResponse> _messagesListResponse;

  List<MessageResponse>  get messagesListResponse => _messagesListResponse;


  Status get status => _status;
  Status _status = Status.none;

  Future<void> getSearchList() async {
    CommonUtil().checkInternetConnection().then((value) {
      if (value) {
        _status = Status.loading;
        notifyListeners();
        APICall().getMessagesList().then((response) {
          if (response.statusCode == 200) {
            List jsonResponse = json.decode(response.body);
            _messagesListResponse = jsonResponse.map((job) => new MessageResponse.fromJson(job)).toList();
            _status = Status.success;
            notifyListeners();
          } else {
            _status = Status.failed;
            notifyListeners();
          }
        });
      } else {
        _status = Status.noInternet;
        notifyListeners();
      }
    });
  }
}