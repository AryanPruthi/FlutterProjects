// ignore_for_file: prefer_const_constructors

import 'package:first_flutter_app/menu_drawer.dart';
import 'package:flutter/material.dart';
import 'bottom_navigation.dart';

//shortcut for stateless widget => 'stless'
class InfoScreen extends StatelessWidget {
  const InfoScreen({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: MenuDrawer(),
        bottomNavigationBar: BottomNavigation(), 
        appBar: AppBar(
          title: Text('The Fans App'),
          //backgroundColor: Colors.blueAccent,
          ),
        // body: const Center(child: Text("Welcome to Flutter app")),
        //body: const Center(child: Text("Welcome to Flutter app")),


        //image from net - 
        //body: Image.network("https://upload.wikimedia.org/wikipedia/commons/b/b4/Lionel-Messi-Argentina-2022-FIFA-World-Cup_%28cropped%29.jpg"),

        //image in bg and text on it-
        body: Container(
          decoration: const BoxDecoration (
            image: DecorationImage(image: NetworkImage('https://w0.peakpx.com/wallpaper/411/800/HD-wallpaper-messi-kiss-to-fifa-cup-2022.jpg'),
            fit: BoxFit.cover
            ),
        ),
      
         
        child: Center(
          child: Container(
            padding: EdgeInsets.all(24),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20),),
              color: Colors.lightBlue
            ),
          child: Text('The G.O.A.T.' , style: TextStyle(fontSize: 20),))
      ),
      ),
      );
  }
}
