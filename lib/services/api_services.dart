import 'dart:convert';

import 'package:pokedesc/models/pokedex_model.dart';
import 'package:pokedesc/services/networking_services.dart';
import 'package:http/http.dart' as http;

class Apiservices extends NetworkingServices{

  Future<List<Pokemon>> fetchPokedexData() async{
    var response =  await http.get(Uri.parse(baseUrl));
    var body = response.body;
    var decodeBody = jsonDecode(body);
    print(decodeBody);
    return PokedexModel.fromJson(decodeBody).pokemon as List<Pokemon>;
  }
  
}