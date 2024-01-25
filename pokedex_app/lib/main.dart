import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pokedex_app/pages/home_page.dart';
import "package:flutter_screenutil/flutter_screenutil.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize:const Size(1080, 2400),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Pokedex",
        theme: ThemeData.dark().copyWith(
          textTheme: GoogleFonts.latoTextTheme(),
        ),
        home: const HomePage(),
      ),
    );
  }
}