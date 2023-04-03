// ignore_for_file: prefer_const_constructors

import 'package:first_flutter_app/clubs.dart';
import 'package:first_flutter_app/cricket_score.dart';
import 'package:first_flutter_app/football_matches.dart';
import 'package:first_flutter_app/info_screen.dart';
import 'package:first_flutter_app/weather_screen.dart';
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
      'Upcoming Matches',
      'Clubs',
      'Weather',
      'Cricket Live Score',
    ];

    List <Widget> menuItems = [];

    //
    menuItems.add(DrawerHeader(
      decoration: BoxDecoration(
        color: Colors.lightBlue,
         ), 
      child: Center(child: Text("The Fans App" , style: TextStyle(fontSize: 24),)),
    ));


    //loop 
    menuTitles.forEach((element) { 

      Widget screen = Container();

      menuItems.add(ListTile(
      title: Text(element,style: TextStyle(fontSize: 24),),
      onTap: () {
        switch (element) {
          case 'Home':
          screen = InfoScreen();
            break;
          
          case 'Upcoming Matches':
          screen = FootballMatches();
            break;

             case 'Clubs':
          screen = Clubs();
            break;

            case 'Weather':
          screen = weatherScreen();
            break;

            case 'Cricket Live Score':
          screen = CricketScore();
            break;

          default:
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