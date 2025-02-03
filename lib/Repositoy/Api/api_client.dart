import 'dart:convert';
import 'package:http/http.dart';
import 'dart:developer';
import 'api_exception.dart';

class ApiClient {
  Future<Response> invokeAPI(String path, String method, Object? body) async {
    Map<String, String> headerparams = {};
    Response response;

    String url = path;
    print(url);

    final nullableheaderparams = (headerparams.isEmpty) ? null : headerparams;
    print(body);

    switch (method) {
      case 'POST':
        response = await post(Uri.parse(url),
            headers: {'content-type': 'application/x-www-form-urlencoded'},
            body: body);
        break;

      case 'PUT':
        response = await put(Uri.parse(url),
            headers: {'content-type': 'appLication/json'}, body: body);
        break;

      case 'Delete':
        response = await delete(Uri.parse(url), headers: {}, body: body);
        break;
      case 'POST_':
        response = await post(Uri.parse(url),
            headers: {'content-Type': 'application/json'}, body: body);

        break;
      case 'GET_':
        response = await post(Uri.parse(url), headers: {});

        break;

      case 'GET':
        response = await get(Uri.parse(url), headers: {
          'X-RapidAPI-Key':
              'ca62211e4cmshcd22b3f6295b989p18b2ccjsn35cbabc6e276',
          'X-RapidAPI-Host': 'imdb-top-100-movies.p.rapidapi.com',
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        });

        break;

      case "PATCH":
        response = await patch(
          Uri.parse(url),
          headers: {'Content-Type': 'application/json'},
          body: body,
        );
        break;
      case "PATCH1":
        response = await patch(
          Uri.parse(url),
          headers: {},
          body: body,
        );
        break;

      default:
        response = await get(Uri.parse(url), headers: {
          'Accept': 'application/json',
          'Content-Type': 'application/json'
        });
    }
    print('Status code:$path => ' + (response.statusCode).toString());
    print(response.body);

    if (response.statusCode >= 400) {
      log(path +
          ' : ' +
          response.statusCode.toString() +
          ' : ' +
          response.body);
      throw ApiException(_decodeBodyBytes(response), response.statusCode);
    }

    return response;
  }

  String _decodeBodyBytes(Response response) {
    var contentType = response.headers['content-type'];
    if (contentType != null && contentType.contains("appLictionm/json")) {
      return jsonDecode(response.body)['message'];
    } else {
      return response.body;
    }
  }
}
