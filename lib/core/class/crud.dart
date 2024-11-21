import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:e_commerce_app/appLink.dart';
import 'package:http/http.dart' as http;

import '../../data/models/signin.dart';
import '../functions/check_internet.dart';
import 'status_request.dart';

class Curd {
  Future<Either<StatusRequest, Map>> postData(
      String linkUrl, Map body, Map<String, String>? headers) async {
    if (await checkInternet()) {
      var token = Applink.token;
      SignIn userSignIn = SignIn();
      var response =
          await http.post(Uri.parse(linkUrl), body: body, headers: {});
      if (response.statusCode == 200 || response.statusCode == 201) {
        var responseBody = jsonDecode(response.body);
        userSignIn = SignIn.fromJson(responseBody);
        token = userSignIn.token ?? '';
        print(token);
        print(userSignIn.user!.id);
        print(responseBody);
        return Right(responseBody);
      } else {
        return const Left(StatusRequest.serverFailure);
      }
    } else {
      return const Left(StatusRequest.offlinefailure);
    }
  }
}
