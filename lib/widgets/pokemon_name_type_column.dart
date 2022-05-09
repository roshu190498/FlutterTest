import 'package:flutter/material.dart';

import '../models/pokedex_model.dart';

class PokemonNameTypeColumn extends StatelessWidget {
  const PokemonNameTypeColumn({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  final Pokemon pokemon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(pokemon.name!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
        ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: Container(
                  color: Colors.grey,
                  child: Padding(
                    padding: EdgeInsets.all(3),
                    child: Text(pokemon.type![0])
                    )
                  ),
        )
      ],
                );
  }
}