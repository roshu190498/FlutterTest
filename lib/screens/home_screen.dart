import 'dart:convert';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:pokedesc/helper/helper.dart';
import 'package:pokedesc/models/pokedex_model.dart';
import 'package:pokedesc/widgets/pokemon_home_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);
  @override
  State<HomeScreen> createState() => _State();
}
class _State extends State<HomeScreen> {
  List<Pokemon> pokemonList = [];
  @override
  void initState() {
    super.initState();
    //getPokemonData();
    fetchPokedexData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: Helper.mGetScreenHeight(context) *0.2,
            child: Stack(
              children: [
                Positioned(
                    left: 20,
                    top: 80,
                    child: Text('PokeDex',style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontSize: 30),
                    )
                  ),
                  Positioned(
                    top: 0,
                    right: 0,
                    bottom: 0,
                    
                    child: Image.asset('images/pokeball.png')
                    )
                
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: PokemonGrid(pokemonList: pokemonList),
              ),
            ),
          )
        ],
      ),

      // body: Container(
        // child: Padding(
        //   padding: const EdgeInsets.all(20),
        //   child: PokemonGrid(pokemonList: pokemonList),
        // ),
      // ),
    );
  }


  



  fetchPokedexData() async {
    var url =
        'https://raw.githubusercontent.com/Biuni/PokemonGO-Pokedex/master/pokedex.json';
    var response = await http.get(Uri.parse(url));
    var body = response.body;
    var decodeBody = jsonDecode(body);
    print(decodeBody);
    setState(() {});
    pokemonList = PokedexModel.fromJson(decodeBody).pokemon as List<Pokemon>;
    print(pokemonList);
    setState(() {});
  }
}

