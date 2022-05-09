import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedesc/helper/helper.dart';
import 'package:pokedesc/models/pokedex_model.dart';
import 'package:pokedesc/widgets/name_value_row.dart';
import 'package:pokedesc/widgets/pokemon_name_type_column.dart';

class PokemonDetailsScreen extends StatelessWidget {
  const PokemonDetailsScreen({ Key? key ,required this.pokemonData}) : super(key: key);

  final Pokemon pokemonData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Helper.getColor(pokemonData.type![0]),elevation: 0,leading: IconButton(onPressed: (){
        Navigator.of(context).pop();
      }, icon: Icon(Icons.arrow_back_ios,color: Colors.white,)),),
      backgroundColor: Helper.getColor(pokemonData.type![0]),
      body: SafeArea(
        child: Container(
          color: Helper.getColor(pokemonData.type![0]),
          child: Stack(
            children: [
              Positioned(
                left: 20,
                child: Column(
                  children: [
                    
                    Text(pokemonData.name!,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 30),),
                    ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Container(
                          color: Colors.grey,
                          child: Padding(
                            padding: EdgeInsets.all(3),
                            child: Text(pokemonData.type![0])
                            )
                        ),
                    )

                  ],
                )
              ),
              Positioned(
                right: 20,
                child: Text('#'+pokemonData.num!,style: TextStyle(color: Colors.white),)
              ),
              //TODO add watermark her 
              Positioned(
                right: -10,
                top: 60,
                height: 100,
                width: 100,
                child: Image.asset(
                  'images/pokeball.png'
                  )
                ),
              Positioned(
                bottom: 0,
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(25),
                    topRight: Radius.circular(25),
                  ),
                  child: Container(
                    color: Colors.white,
                    width: Helper.mGetScreenWidth(context),
                    height: Helper.mGetScreenHeight(context)*0.6,
                    child: Padding(
                      padding: EdgeInsets.only(top: 50,left: 20),
                      child: Column(
                        children: [
                          NameValueWidget(name: 'name', value: pokemonData.name!),
                          NameValueWidget(name: 'height', value: pokemonData.height!),
                          NameValueWidget(name: 'weight', value: pokemonData.weight!),
                          NameValueWidget(name: 'Spawn time', value: pokemonData.spawnTime!),
                          NameValueWidget(name: 'weakness', value: pokemonData.weaknesses.toString()!),
                          // NameValueWidget(name: 'pre evolution', value: pokemonData.!),
                          // NameValueWidget(name: 'next evolution', value: pokemonData.nextEvolution!),
                        ],
                      ),
                    ),
                ),
                )),
                Positioned(
                  left: 110,
                  top: 70,
                  child: CachedNetworkImage(
                    imageUrl: pokemonData.img!,
                  )
                )
            ],
          ),
        ),
      ),    
    );
  }
}