// ignore_for_file: prefer_const_constructors, avoid_function_literals_in_foreach_calls
import 'package:calculators_app/BMICalculator_metrics.dart';
import 'package:calculators_app/home_screen.dart';
import 'package:calculators_app/simpleCalculator.dart';
import 'package:flutter/material.dart';

class MenuDrawer extends StatelessWidget {
  const MenuDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: buildMenuItems(context),
      ),
    );
  }

  List <Widget> buildMenuItems(BuildContext ctx){
    final List<String> menuTitles = [
      'Home',
      'Simple Calculator',
      'BMI Calculator',
      'Scientific Calculator',
      'Contact Us',
    ];

    List <Widget> menuItems = [];

    //
    menuItems.add(DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.orange,
         ), 
      child: Center(child: Text("Calculator App" , style: TextStyle(fontSize: 24),)),
    ));

    menuTitles.forEach((element) { 

      Widget screen = Container();

      menuItems.add(ListTile(
        // decoration: BoxDecoration(
        //   color: Colors.greenAccent
        // ),
        tileColor: Color.fromARGB(255, 23, 189, 169),
        // leading: EdgeInsets.all(10),
        contentPadding: EdgeInsets.only(left: 15.0, right: 0.0),
        visualDensity: VisualDensity(horizontal: 0, vertical: 4),
      title: Text(element,style: TextStyle(fontSize: 22),),
      onTap: () {
        switch (element) {
          case 'Home':
          screen = HomeScreen();
            break;
          
          case 'Simple Calculator':
          screen = simpleCalculator();
            break;

             case 'BMI Calculator':
          screen = bmicalculatorapp();
            break;

            case 'Scientific Calculator':
          screen = HomeScreen();
            break;

          //default:
        }

        Navigator.of(ctx).push(
          MaterialPageRoute(builder: (ctx) => screen),
        );

      },
      )
    );
    }
    );

    

    return menuItems;
  }
}