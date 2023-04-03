// ignore_for_file: camel_case_types, prefer_const_constructors, library_private_types_in_public_api, unnecessary_new, use_key_in_widget_constructors, prefer_typing_uninitialized_variables

import 'package:calculators_app/menu_drawer.dart';
import 'package:flutter/material.dart';

class simpleCalculator extends StatelessWidget {
  final fieldText = TextEditingController();
  simpleCalculator({super.key});

  // void clearText() {
  //   fieldText.clear();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,23,189,169),
      appBar: AppBar(title: Text('Simple Calculator')),
      drawer: MenuDrawer(),
      body: Center(child: AddTwoNumbers()),
    );
    
  }
}


class AddTwoNumbers extends StatefulWidget {
  @override
  _AddTwoNumbersState createState() => _AddTwoNumbersState();
}

class _AddTwoNumbersState extends State<AddTwoNumbers> {
  TextEditingController numfield1 = new TextEditingController();
  TextEditingController numfield2 = new TextEditingController();
  TextEditingController operation = new TextEditingController();
  String result = "0";


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.0),
      child: Column(
        children: <Widget>[

          TextField(
            keyboardType: TextInputType.number,
            controller: numfield1,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'First Number',
              hintText: 'Enter First Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),

          
          TextField(
            //keyboardType: TextInputType.number,
            controller: operation,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Operation',
              hintText: 'Enter Operation',
            ),
          ),
          SizedBox(
            height: 20,
          ),


          TextField(
            keyboardType: TextInputType.number,
            controller: numfield2,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Second Number',
              hintText: 'Enter Second Number',
            ),
          ),
          SizedBox(
            height: 20,
          ),

          Wrap(

            children: 
            [
              ElevatedButton(

                child: const Text("Calculate"),
                onPressed: () 
                {
                  setState(() 
                  {

                    if(operation.text=="+") 
                    { 
                        int sum = int.parse(numfield1.text) + int.parse(numfield2.text);
                        result = sum.toString();
                    } 
                    else if(operation.text=="-") 
                    { 
                        int sum = int.parse(numfield1.text) - int.parse(numfield2.text);
                        result = sum.toString();
                    } 
                    else if(operation.text=="*")
                    {
                      int sum = int.parse(numfield1.text) * int.parse(numfield2.text);
                      result = sum.toString();
                    }
                    else if(operation.text=="/")
                    {
                      int sum = int.parse(numfield1.text) ~/ int.parse(numfield2.text);
                      result = sum.toString();
                    }
                  }
                );
                },
              ),


              Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 0, 0),
                child: ElevatedButton(
                  onPressed: () 
                  {
                       numfield1.clear();
                       numfield2.clear();
                       operation.clear();
                    },
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.orange)),
                  child: const Text('Clear'),
                ),
              ),


            ],
          ),

        
          SizedBox(
            height: 20,
          ),
          Text('Result: $result'),
        ],
      ),
    );
  }
}