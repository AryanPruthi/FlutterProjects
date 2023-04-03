// ignore_for_file: prefer_const_constructors

import 'package:first_flutter_app/football_matches.dart';
import 'package:first_flutter_app/weather_screen.dart';
import 'package:flutter/material.dart';
import 'info_screen.dart';

void main() {
  runApp(MyApp());
} 

class MyApp extends StatelessWidget{
  @override 
  Widget build(BuildContext context) {

    // return const MaterialApp(
    //   home: Text("Hello flutter")// home screen  
    //   //home: Center(child: SafeArea(child: Text("Hello flutter")))// safe area: helps stop override existing stuff (notification bar doesnot overlap)
    // );

    return MaterialApp(

      //remove debud band on top right
      debugShowCheckedModeBanner: false,
      

      //to make a theme
      theme: ThemeData(primarySwatch:Colors.lightBlue),
      

      //home: InfoScreen()
      routes: {
        '/': (context) => InfoScreen(),
        '/Upcomingmatches' :(context) => FootballMatches(),
        '/WeatherScreen' :(context) => weatherScreen()
    
      },
      initialRoute: '/',
      );

  }
}