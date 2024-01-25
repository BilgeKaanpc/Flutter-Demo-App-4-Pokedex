import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constant/constant.dart';
import 'package:pokedex_app/constant/ui_helper.dart';
import 'package:pokedex_app/model/pokemon_model.dart';

class PokeInfo extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeInfo({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(10.w),
        ),
        color: Colors.white
      ),
      child: Padding(
        padding: UIHelper.getIconPadding(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
           _buildInfoRow("Name", pokemon.name),
           _buildInfoRow("Height", pokemon.height),
           _buildInfoRow("Weight", pokemon.weight),
           _buildInfoRow("Spawn Time", pokemon.spawnTime),
           _buildInfoRow("Weakness", pokemon.weaknesses),
           _buildInfoRow("Pre Evlution", pokemon.prevEvolution),
           _buildInfoRow("Next Evolution", pokemon.nextEvolution),
          ],
        ),
      ),
    );
  }

_buildInfoRow(String label,dynamic value){
return Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
    Text(label,style: Constants.getPokeLabeltyle(),),
    if(value is List && value.isNotEmpty)
    Flexible(child: Text(value.join(" , "),style: Constants.getPokeInfotyle(),))
    else if(value == null)
    Text("Not available",style: Constants.getPokeInfotyle(),)
    else Text(value,style: Constants.getPokeInfotyle(),)
  ],
);
}

}
