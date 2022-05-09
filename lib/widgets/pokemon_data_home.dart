import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedesc/helper/helper.dart';
import 'package:pokedesc/widgets/pokemon_name_type_column.dart';

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
            color: Helper.getColor(pokemon.type![0]),
            child: Stack(
              children: [
                 Positioned(
                  right: -5,
                  bottom: -5,
                  child: Container(
                    width: 100,
                    height: 100,
                    child: Image.asset(
                      'images/pokeball.png'
                      ),
                  ),
                ),
                Positioned(
                  right: 10.0,
                  bottom: 0.0,
                  child: CachedNetworkImage(
                    height: 100,
                    width: 100,
                  imageUrl: pokemon.img!,
                )),
                Positioned(
                  top: 50,
                  left: 10,
                  child: PokemonNameTypeColumn(pokemon: pokemon))   
              ],
            ),
          )
          : FlutterLogo(),
    );
  }


  
}

