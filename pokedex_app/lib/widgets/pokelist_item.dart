import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constant/constant.dart';
import 'package:pokedex_app/model/pokemon_model.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.w),
      ),
      elevation: 3,
      shadowColor: Colors.white,
      color: Colors.red.shade200,
      child: Column(
        children: [
          Text(pokemon.name ?? "N/A",style: Constants.getPokeNameStyle() ,),
          Chip(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            label: Text(
              pokemon.type![0],style: Constants.getPokeChipStyle(),
            ),
          )
        ],
      ),
    );
  }
}
