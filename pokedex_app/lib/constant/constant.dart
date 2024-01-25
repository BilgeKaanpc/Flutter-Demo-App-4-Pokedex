import 'package:flutter/material.dart';

class Constants {
  Constants._();

  static const String title = "Pokedex";
  static TextStyle getTitleStyle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 48,
    );
  }
  static TextStyle getPokeNameStyle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 30,
    );
  }
  static TextStyle getPokeChipStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 20,
    );
  }
}
