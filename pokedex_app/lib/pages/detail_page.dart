import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pokedex_app/constant/ui_helper.dart';
import 'package:pokedex_app/model/pokemon_model.dart';
import 'package:pokedex_app/widgets/poke_info.dart';
import 'package:pokedex_app/widgets/poke_type_name.dart';

class DetailPage extends StatelessWidget {
  final PokemonModel pokemon;
  const DetailPage({required this.pokemon, super.key});

  @override
  Widget build(BuildContext context) {
    String pokeballImageUrl = "images/pokeball.png";
    return ScreenUtil().orientation == Orientation.portrait
        ? _buildPortraitBody(context, pokeballImageUrl)
        : _buildLandScapeBody(context, pokeballImageUrl);
  }

  Scaffold _buildPortraitBody(BuildContext context, String pokeballImageUrl) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getIconPadding(),
              child: IconButton(
                iconSize: 30,
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            PokeTypeName(
              pokemon: pokemon,
            ),
            SizedBox(
              height: 20.h,
            ),
            Expanded(
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    top: 10,
                    height: 0.15.sh,
                    child: Image.asset(
                      pokeballImageUrl,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    top: 0.13.sh,
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: PokeInfo(pokemon: pokemon),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Hero(
                      tag: pokemon.id!,
                      child: CachedNetworkImage(
                        imageUrl: pokemon.img ?? "",
                        height: 0.25.sh,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Scaffold _buildLandScapeBody(BuildContext context, String pokeballImageUrl) {
    return Scaffold(
      backgroundColor: UIHelper.getColorFromType(pokemon.type![0]),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: UIHelper.getIconPadding(),
              child: IconButton(
                iconSize: 30,
                color: Colors.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            Expanded(
                child: Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      PokeTypeName(pokemon: pokemon),
                      Expanded(
                        child: Hero(
                          tag: pokemon.id!,
                          child: CachedNetworkImage(
                            imageUrl: pokemon.img ?? "",
                            height: 0.25.sw,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: PokeInfo(pokemon: pokemon),
                  ),
                ),
              ],
            ))
          ],
        ),
      ),
    );
  }
}
