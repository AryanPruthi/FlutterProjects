// ignore_for_file: prefer_const_constructors
import 'package:calculators_app/BMICalculator_imperial.dart';
import 'package:calculators_app/BMICalculator_metrics.dart';
import 'package:calculators_app/home_screen.dart';
import 'package:calculators_app/scalescreen.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(MyApp());

}

class MyApp extends StatelessWidget {  
  @override  
  Widget build(BuildContext context) {  
    return MaterialApp(  
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch:Colors.orange),
      home: DefaultTabController(  
        length: 3,  
        child: Scaffold(  
          appBar: AppBar(  
            title: Text('BMI Calculator'),  
            bottom: TabBar(  
              // ignore: prefer_const_literals_to_create_immutables
              tabs: [  
                Tab(text: "Metrics"),   
                Tab(text: "Standard"),
                Tab(text: "Scale")    
              ],  
            ),  
          ),  
          body: TabBarView(  
            children: [  
              bmicalculator(),  
              bmicalculator2(),  
              scalescreen(),
            ],  
          ),  
        ),  
      ),  

      // routes: {
      //   '/': (context) => HomeScreen(),
      // }


    ); 
    
     
  }  
}  






