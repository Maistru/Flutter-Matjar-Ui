import 'dart:convert';
import 'package:dartz/dartz.dart';
import 'package:matjar/core/class/status_request.dart';
import 'package:http/http.dart' as http;
import 'package:matjar/core/function/check_internet.dart';

class Crud {
  Future<Either<StatusRequest, Map>> postData(linkUrl, Map data) async {
    if (await checkInternet()) {
      var response = await http.post(Uri.parse(linkUrl), body: data);
      print(response.statusCode);
      if (response.statusCode == 200 || response.statusCode == 201) {
        Map responseBody = jsonDecode(response.body);
        print(responseBody);
        return Right(responseBody);
      } else {
        return const Left(StatusRequest.serverFailure);
      }
    } else {
      return const Left(StatusRequest.offlineFailure);
    }
  }
}
