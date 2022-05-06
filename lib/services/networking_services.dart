import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:pokedesc/models/pokedex_model.dart';

import 'package:pokedesc/services/base_services.dart';

class NetworkingServices extends BaseApiServices {
  @override
  Future<PokedexModel> getResponse()  async{
    dynamic responseJson;
    try {
      final response = await http.get(Uri.parse(baseUrl));
      responseJson = returnResponse(response);
    } on SocketException{
      throw Exception('No Internet');
    }

    return responseJson;

  }


  dynamic returnResponse(http.Response response){
    switch(response.statusCode){
      case 200:
        var responseJson = jsonDecode(response.body);
        return responseJson;
      case 400:  
      case 401:
      case 403:
      case 404:
      case 500:
        var responseJson = jsonDecode(response.body);
        return responseJson;
    }
  }
  
}