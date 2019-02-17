import 'dart:async';
import 'dart:convert';
import 'dart:io';
import 'package:floatplane/data_factory/repositories/injector.dart';
import 'package:floatplane/data_factory/store.dart';
import 'package:http/http.dart';

class Api {
  final String baseUrl = 'http://api.kartzapp.com/';

  Future<Response> get(String url, {Map<String, dynamic> query}) async {
//    String token =
//        (store != null && store.state != null && store.state.user != null)
//            ? store.state.user.token
//            : null;
    //Uri uri = Uri.https(baseUrl, url, query);
    return injector.client.get(
      url,
      headers: {
//        HttpHeaders.authorizationHeader:
//            "Bearer " + (token != null ? token : ''),
        "Accept": "application/json",
        "Content-Type": "application/json"
      },
    ).then((response) {
      return response;
    }).catchError((e) {
      throw e;
    });
  }

  Future<Response> post(String url, body) async {
    return injector.client
        .post(url,
            headers: {
//              HttpHeaders.authorizationHeader: "Bearer " +
//                  (store.state.user != null ? store.state.user.token : ''),
              "Accept": "application/json",
              "Content-Type": "application/json"
            },
            body: json.encode(body))
        .then((response) {
      return response;
    }).catchError((e) {
      return null;
    });
  }

  Map<String, dynamic> getData(Response response, {String field = "data"}) {
    final json = jsonDecode(response.body);
    final Map<String, dynamic> data =
        new Map<String, dynamic>.from(json[field]);
    return data;
  }

  List<Map<String, dynamic>> getArrayData(Response response,
      {String field = "data"}) {
    final json = jsonDecode(response.body);
    if (field == null) {
      final List<Map<String, dynamic>> data =
          new List<Map<String, dynamic>>.from(json);
      return data;
    }
    final List<Map<String, dynamic>> data =
        new List<Map<String, dynamic>>.from(json['data']);
    return data;
  }
}
