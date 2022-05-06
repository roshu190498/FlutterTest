

abstract class BaseApiServices {
  String baseUrl = "https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json";
  Future<dynamic> getResponse();
  
}