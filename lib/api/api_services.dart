import 'dart:developer';

import 'package:dio/dio.dart';
// import 'package:flutterwidgets/models/Welcome.dart
import 'package:flutterwidgets/models/userModel.dart';

class ApiServices {
  final Dio _ins = Dio();
  ApiServices.init();

  static final instance = ApiServices.init();

  Future<Welcome> fettchdata() async {
    try {
      final Response response = await _ins
          .get("https://reqres.in/api/users", queryParameters: {"page": 1});

      final Welcome user = Welcome.fromJson(response.data);

      log(response.toString());
      return Future.value(user);
    } on Exception catch (e) {
      return Future.error(e);
    }
  }

  Future<Welcome> deleteUser() async {
    final Response response = await _ins.delete("https://reqres.in/api/users/");
    var del = await _ins.delete(response as String);
    return Future.value();
  }
}
