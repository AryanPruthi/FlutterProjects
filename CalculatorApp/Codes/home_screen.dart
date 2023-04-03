// ignore_for_file: prefer_const_constructors
import 'package:calculators_app/menu_drawer.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(

        drawer: MenuDrawer(),
        //bottomNavigationBar: BottomNavigation(),

        appBar: AppBar(
          title: Text('Calculator App'),
          //backgroundColor: Colors.blueAccent,
          ),

        //image in bg and text on it-
        body: Container(
          decoration: const BoxDecoration (
            image: DecorationImage(image: NetworkImage('https://media.istockphoto.com/id/1237986300/vector/financial-success-seamless-pattern-track-expenses-budget-emergency-fund-credit-card-home.jpg?s=612x612&w=0&k=20&c=iTn8IBv4ukSA4En-rYeo0UD6B5CvhF4VFbm7Yp3UL6g='),
            fit: BoxFit.cover
            ),
        ),
      
         
        child: Center(
          child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20),),
              color: Colors.orange
            ),
          child:Text('The Calculators App' , style: TextStyle(fontSize: 20),),
          )
      ),
      ),
      );
  }
}

