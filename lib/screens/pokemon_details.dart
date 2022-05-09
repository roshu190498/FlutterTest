import 'package:flutter/material.dart';
import 'package:pokedesc/helper/helper.dart';
import 'package:pokedesc/models/pokedex_model.dart';

class PokemonDetailsScreen extends StatelessWidget {
  const PokemonDetailsScreen({ Key? key ,required this.pokemonData}) : super(key: key);

  final Pokemon pokemonData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Helper.getColor(pokemonData.type![0]),
      body: Column(
        children: [
          Container(
            height: Helper.mGetScreenHeight(context) * 0.4,
            
          )
        ],

      ),
      
    );
  }
}