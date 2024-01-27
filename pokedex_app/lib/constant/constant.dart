import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Constants {
  Constants._();

  static const String title = "Pokedex Bilge";
  static TextStyle getTitleStyle() {
    return TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: _calculateFontSize(120),
    );
  }
  static TextStyle getPokeNameStyle() {
    return const TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 25,
    );
  }
  static TextStyle getPokeChipStyle() {
    return const TextStyle(
      color: Colors.white,
      fontSize: 20,
    );
  }

  static getPokeInfotyle(){
    return const TextStyle(
      fontSize: 16,
      color: Colors.black
    );
  }

  static getPokeLabeltyle(){
    return const TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: Colors.black
    );
  }

  static _calculateFontSize(int size){
    if(ScreenUtil().orientation == Orientation.portrait){
      return size.sp;
    }else{
      return (size).sp;
    }
  }


}
