import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../models/pokedex_model.dart';

class CustomPokemonWidget extends StatelessWidget {
  const CustomPokemonWidget({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(

      borderRadius: BorderRadius.circular(10),
      child: pokemon.img != null
          ? Container(
            color: getColor(pokemon.type![0]),
            child: CachedNetworkImage(
                imageUrl: pokemon.img!,
                placeholder: (context, url) =>
                    Image.asset('images/pokeball.png'),
              ),
          )
          : FlutterLogo(),
    );
  }


  Color getColor(String? type){
    if(type == "Grass") {
      return Colors.green[400]!;
    }else if(type == "Fire"){
      return Colors.red[400]!;
    }
    else if(type == "Flying"){
      return Colors.white;
    }
    else if(type == "Psychic"){
      return Colors.purple[400]!;
    }else if(type == "Poison"){
      return Colors.purple[400]!;
    }
    else if(type == "Water"){
      return Colors.grey[400]!;
    }
    else if(type == "Ground"){
      return Colors.brown[400]!;
    }
    else if(type == "Rock"){
      return Colors.brown[400]!;
    }
    else
      return Colors.red[400]!;


  }
}