import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedesc/screens/pokemon_details.dart';
import 'package:pokedesc/widgets/pokemon_data_home.dart';

import '../models/pokedex_model.dart';

class PokemonGrid extends StatelessWidget {
  const PokemonGrid({
    Key? key,
    required this.pokemonList,
  }) : super(key: key);

  final List<Pokemon> pokemonList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: pokemonList.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 2 / 2,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10),
        itemBuilder: (BuildContext context, int index) {
          return InkWell(
            onTap: (() {
              Navigator.of(context).push(MaterialPageRoute(builder: (_)=>PokemonDetailsScreen(pokemonData: pokemonList[index])));
            }),
            child: CustomPokemonWidget(pokemon: pokemonList[index]),
          );
        });
  }
}

