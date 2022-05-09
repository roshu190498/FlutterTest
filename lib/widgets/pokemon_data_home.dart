import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedesc/helper/helper.dart';

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
                   placeholder: (context, url) =>
                    Image.asset('images/pokeball.png'),
                )),
                Positioned(
                  top: 50,
                  left: 10,
                  child: Column(
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
                ))   
              ],
            ),
          )
          : FlutterLogo(),
    );
  }


  
}