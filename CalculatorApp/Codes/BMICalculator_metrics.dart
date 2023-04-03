// ignore_for_file: prefer_const_constructors, camel_case_types, unnecessary_new

import 'package:calculators_app/main.dart';
import 'package:calculators_app/menu_drawer.dart';
import 'package:flutter/material.dart';

class bmicalculator extends StatelessWidget {
  final fieldText = TextEditingController();
  bmicalculator({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: bmicalculatorapp()),
    );

  }
}

class bmicalculatorapp extends StatefulWidget {
  const bmicalculatorapp({super.key});

  @override
  State<bmicalculatorapp> createState() => _bmicalculatorappState();
}

class _bmicalculatorappState extends State<bmicalculatorapp> {
  TextEditingController height = new TextEditingController();
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
            controller: height,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Enter Height',
              hintText: 'Enter your height in Metres',
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
              hintText: 'Enter your weight in Kgs',
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

                    double bmi = (double.parse(weight.text) / (double.parse(height.text)*double.parse(height.text)));
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