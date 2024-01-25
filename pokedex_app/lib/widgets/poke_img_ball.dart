import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:pokedex_app/constant/ui_helper.dart';
import 'package:pokedex_app/model/pokemon_model.dart';

class PokeImgBall extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeImgBall({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = "images/pokeball.png";
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: Image.asset(
            pokeballImageUrl,
            width: UIHelper.calculatPokeImgSize(),
            height: UIHelper.calculatPokeImgSize(),
            fit: BoxFit.fitHeight,
          ),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: Hero(
            tag: pokemon.id!,
            child: CachedNetworkImage(
              errorWidget: (context, url, error) => const Icon(Icons.error),
              fit: BoxFit.fitHeight,
              width: UIHelper.calculatPokeImgSize(),
              height: UIHelper.calculatPokeImgSize(),
              imageUrl: pokemon.img ?? "",
              placeholder: (context, url) => const CircularProgressIndicator( color: Colors.red,),
            ),
          ),
        ),
      ],
    );
  }
}
