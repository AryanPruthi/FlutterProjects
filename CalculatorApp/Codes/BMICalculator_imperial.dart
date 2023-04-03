// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_new, non_constant_identifier_names, unused_local_variable

import 'package:calculators_app/main.dart';
import 'package:calculators_app/menu_drawer.dart';
import 'package:flutter/material.dart';

class bmicalculator2 extends StatelessWidget {
  final fieldText = TextEditingController();
  bmicalculator2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: bmicalculatorapp2()),
    );

  }
}

class bmicalculatorapp2 extends StatefulWidget {
  const bmicalculatorapp2({super.key});

  @override
  State<bmicalculatorapp2> createState() => _bmicalculatorappState2();
}

class _bmicalculatorappState2 extends State<bmicalculatorapp2> {
  TextEditingController height_feet = new TextEditingController();
  TextEditingController height_inches = new TextEditingController();
  TextEditingController weight = new TextEditingController();
  String result = "0";


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,23,189,169),
      appBar: AppBar(title: Text('BMI Calculator')),
      drawer: MenuDrawer(),
      body:
      // padding: EdgeInsets.all(16.0),
      Padding(
      padding: EdgeInsets.all(30), 
      child: Column(
        children: [
          TextField(
            //keyboardType: TextInputType.number,
            controller: height_feet,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Height',
              hintText: 'Feet',
            ),
          ),
          SizedBox(
            height: 20,
          ),

          TextField(
            //keyboardType: TextInputType.number,
            controller: height_inches,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Height',
              hintText: 'Inches',
            ),
          ),
          SizedBox(
            height: 20,
          ),

          
          TextField(
            //keyboardType: TextInputType.number,
            controller: weight,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter weight',
              hintText: 'Enter your weight in pounds',
            ),
          ),
          SizedBox(
            height: 20,
          ),

        Wrap(

            children: 
            [
              ElevatedButton(

                child: const Text("Calculate BMI"),
                onPressed: () 
                {
                  setState(() 
                  {
                    double x = 703;
                    double xx =  ((double.parse(height_feet.text)*12) + double.parse(height_inches.text));
                    double bmi = ((double.parse(weight.text) /(xx*xx))*x);
                    result = bmi.toStringAsFixed(2);
                  }
                );
                },
              ),


            ],
          ),       

        SizedBox(
            height: 20,
          ),
          Text('Result : $result', style:TextStyle(fontSize: 20),),
        ],
      ) ,
      )
    );
  }
}