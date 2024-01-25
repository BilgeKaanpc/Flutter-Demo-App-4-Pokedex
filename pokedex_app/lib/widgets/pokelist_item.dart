import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constant/constant.dart';
import 'package:pokedex_app/constant/ui_helper.dart';
import 'package:pokedex_app/model/pokemon_model.dart';
import 'package:pokedex_app/pages/detail_page.dart';
import 'package:pokedex_app/widgets/poke_img_ball.dart';

class PokeListItem extends StatelessWidget {
  final PokemonModel pokemon;
  const PokeListItem({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(builder: (context) => DetailPage(pokemon: pokemon)));
      },
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.w),
        ),
        elevation: 3,
        shadowColor: Colors.white,
        color: UIHelper.getColorFromType(pokemon.type![0]),
        child: Padding(
          padding: UIHelper.getDefaultPadding(),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(pokemon.name ?? "N/A",style: Constants.getPokeNameStyle() ,),
              Chip(
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
                label: Text(
                  pokemon.type![0],style: Constants.getPokeChipStyle(),
                ),
              ),
              Expanded(child: PokeImgBall(pokemon: pokemon))
            ],
          ),
        ),
      ),
    );
  }
}
