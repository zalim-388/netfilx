import 'dart:convert';

import 'package:http/http.dart';
import 'package:netfilx/Repositoy/Api/api_client.dart';
import 'package:netfilx/Repositoy/Model_class/netflix_Model.dart';

class NetflixApi {
ApiClient _apiClient = ApiClient();

Future<List<NetflixModel>>getmovie()async{
  String path='https://imdb-top-100-movies.p.rapidapi.com/';

  var body={};

  Response respose =await _apiClient.invokeAPI(path,'GET',body);


List<dynamic> jsonrespose=jsonDecode(respose.body);
return jsonrespose.map((movie)=>NetflixModel.fromJson(movie)).toList();

}



}