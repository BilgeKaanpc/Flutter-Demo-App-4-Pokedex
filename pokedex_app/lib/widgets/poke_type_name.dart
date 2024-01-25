import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constant/constant.dart';
import 'package:pokedex_app/model/pokemon_model.dart';

class PokeTypeName extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeTypeName({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.05.sh),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Text(
                  pokemon.name ?? "",
                  style: Constants.getPokeNameStyle(),
                ),
              ),
              Text(
                "#${pokemon.num}",
                style: Constants.getPokeNameStyle(),
              )
            ],
          ),
          SizedBox(height: 0.02.sh,),
          Chip(
            label: Text(pokemon.type?.join(" , ") ?? "",style: Constants.getPokeChipStyle(),),
          )
        ],
      ),
    );
  }
}
